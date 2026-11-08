--[[
    Pigeon Cruise Control: client.

    Y sets cruise control at the vehicle's current speed. The vehicle's top speed is capped at the set speed
    (SetEntityMaxSpeed), so it doesn't run away downhill, and below it the resource holds the accelerator down
    for the driver (SetControlNormal on INPUT_VEH_ACCELERATE). Braking, the handbrake, a crash, leaving the
    driver's seat, the engine stopping or Y again turn it off, and the cap is taken away.

    It only runs for the driver, only changes their own vehicle, and nothing runs while it's off.
]]

local RESOURCE = GetCurrentResourceName()

local ACCELERATE = 71           -- INPUT_VEH_ACCELERATE
local BRAKE = 72                -- INPUT_VEH_BRAKE
local HANDBRAKE = 76            -- INPUT_VEH_HANDBRAKE
local NO_CAP = 1000.0           -- m/s: SetEntityMaxSpeed with this takes the cap away
local FULL_BELOW = 2.0          -- m/s under the set speed at which the accelerator is held fully down

local PER_UNIT = Config.Units == 'kmh' and (1 / 3.6) or 0.44704   -- m/s in one Config.Units
local UNIT = Config.Units == 'kmh' and 'km/h' or 'mph'

-- 'auto' follows ox_lib's language (the ox:locale convar), and English when that isn't set.
local locale = Config.Locale == 'auto' and GetConvar('ox:locale', 'en') or Config.Locale
local strings = Locales[locale] or Locales.en

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local blockedClass = {}
for _, class in ipairs(Config.BlockedClasses or {}) do blockedClass[class] = true end

local vehicle                   -- the vehicle cruising, or nil
local target = 0.0              -- the set speed, m/s
local lastMessage = {}

local function notify(key, values, kind)
    if not Config.ShowMessages then return end
    local now = GetGameTimer()
    if lastMessage[key] and now - lastMessage[key] < 300 then return end
    lastMessage[key] = now
    local text = t(key, values)
    local mode = Config.Notifications
    if mode == 'ox_lib' or (mode == 'auto' and GetResourceState('ox_lib') == 'started') then
        TriggerEvent('ox_lib:notify', { title = strings.title, description = text, type = kind or 'inform' })
    else
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

local function shown(speed)
    return math.floor(speed / PER_UNIT + 0.5)
end

local function stop(message)
    if not vehicle then return end
    if DoesEntityExist(vehicle) then SetEntityMaxSpeed(vehicle, NO_CAP) end
    vehicle = nil
    if message then notify(message) end
end

--- The vehicle the player is driving, or nil.
local function driving()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh == 0 or GetPedInVehicleSeat(veh, -1) ~= ped then return nil end
    return veh
end

local function setSpeed(speed)
    target = speed
    SetEntityMaxSpeed(vehicle, target)
    notify('on', { speed = shown(target), unit = UNIT }, 'success')
end

local function start()
    local veh = driving()
    if not veh then return end
    if blockedClass[GetVehicleClass(veh)] or not GetIsVehicleEngineRunning(veh) then
        notify('cant', nil, 'error')
        return
    end
    local forward = GetEntitySpeedVector(veh, true).y
    local min = (tonumber(Config.MinSpeed) or 0) * PER_UNIT
    if forward < min or forward < 1.0 then
        notify('too_slow', { speed = shown(min), unit = UNIT }, 'error')
        return
    end
    vehicle = veh
    setSpeed(shown(forward) * PER_UNIT)

    CreateThread(function()
        while vehicle == veh do
            if driving() ~= veh or not DoesEntityExist(veh) then
                stop('off')
            elseif IsControlPressed(0, BRAKE) or IsControlPressed(0, HANDBRAKE) then
                stop('off')
            elseif HasEntityCollidedWithAnything(veh) or not GetIsVehicleEngineRunning(veh) then
                stop('off')
            else
                local speed = GetEntitySpeedVector(veh, true).y
                if speed < target and IsVehicleOnAllWheels(veh) then
                    -- Ease off near the set speed so it doesn't surge past it.
                    local throttle = math.min(1.0, math.max(0.25, (target - speed) / FULL_BELOW))
                    SetControlNormal(0, ACCELERATE, throttle)
                end
            end
            Wait(0)
        end
    end)
end

local function change(direction)
    if not vehicle then return end
    local step = (tonumber(Config.Step) or 5) * PER_UNIT
    local min = (tonumber(Config.MinSpeed) or 0) * PER_UNIT
    local speed = shown(target + direction * step) * PER_UNIT
    if speed < min then speed = shown(min) * PER_UNIT end
    setSpeed(speed)
end

---------------------------------------------------------------------------
-- Keys, commands and exports

RegisterCommand(Config.Command, function()
    if vehicle then stop('off') else start() end
end, false)
RegisterKeyMapping(Config.Command, strings.key_toggle or Locales.en.key_toggle, 'keyboard', Config.Key)

RegisterCommand(Config.Command .. 'up', function() change(1) end, false)
RegisterKeyMapping(Config.Command .. 'up', strings.key_up or Locales.en.key_up, 'keyboard', Config.UpKey or '')

RegisterCommand(Config.Command .. 'down', function() change(-1) end, false)
RegisterKeyMapping(Config.Command .. 'down', strings.key_down or Locales.en.key_down, 'keyboard', Config.DownKey or '')

--- True while cruise control is on.
exports('IsCruising', function() return vehicle ~= nil end)

--- The set speed in metres per second, or nil while it's off.
exports('GetCruiseSpeed', function() return vehicle and target or nil end)

--- Turns cruise control off, for example when another resource takes over the vehicle.
exports('Cancel', function() stop(nil) end)

AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then stop(nil) end
end)

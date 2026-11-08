--[[
    Pigeon Cruise Control: English.

    To translate, copy this file to a new one named with the language's code (such as de.lua or pt-br.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} and ~GTA codes~ exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    -- Title of the messages.
    title = 'Cruise control',
    -- In GTA's Settings -> Key Bindings -> FiveM.
    key_toggle = 'Cruise control on / off',
    -- In GTA's Settings -> Key Bindings -> FiveM.
    key_up = 'Cruise control faster',
    -- In GTA's Settings -> Key Bindings -> FiveM.
    key_down = 'Cruise control slower',
    -- {speed} is a number, {unit} is mph or km/h.
    on = 'Cruise control set to {speed} {unit}.',
    -- Shown when it's turned off, by the key, braking or a crash.
    off = 'Cruise control off.',
    -- {speed} is a number, {unit} is mph or km/h.
    too_slow = 'Go at least {speed} {unit} to set cruise control.',
    -- Shown in a boat, aircraft, bicycle or train, or with the engine off.
    cant = 'Cruise control doesn\'t work here.',
}

Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

-- The key and the command that turn cruise control on at the current speed, and off again. Players can
-- change the keys in GTA's Settings -> Key Bindings -> FiveM.
-- Codes: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.Key = 'Y'
Config.Command = 'cruise'

-- Keys for raising and lowering the set speed while cruising. '' leaves them unbound until a player
-- picks them; /cruiseup and /cruisedown always work.
Config.UpKey = ''
Config.DownKey = ''
Config.Step = 5                 -- how much each press changes the speed, in Config.Units

-- 'mph' or 'kmh', for the messages and Config.MinSpeed and Config.Step.
Config.Units = 'mph'

-- The slowest speed cruise control can be set at, in Config.Units.
Config.MinSpeed = 20

-- Vehicle classes cruise control doesn't work in. 13 cycles, 14 boats, 15 helicopters, 16 planes,
-- 21 trains. Classes: https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.BlockedClasses = { 13, 14, 15, 16, 21 }

-- Tell players when cruise control turns on or off, and why it can't.
Config.ShowMessages = true

-- How messages are shown.
-- 'auto' uses ox_lib notifications if ox_lib is running, otherwise GTA's notification feed.
-- 'ox_lib' or 'gta' to force one.
Config.Notifications = 'auto'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"

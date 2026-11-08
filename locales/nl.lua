--[[
    Pigeon Cruise Control: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.nl = {
    title = 'Cruisecontrol',
    key_toggle = 'Cruisecontrol aan / uit',
    key_up = 'Cruisecontrol sneller',
    key_down = 'Cruisecontrol langzamer',
    on = 'Cruisecontrol ingesteld op {speed} {unit}.',
    off = 'Cruisecontrol uit.',
    too_slow = 'Rij minstens {speed} {unit} om cruisecontrol in te stellen.',
    cant = 'Cruisecontrol werkt hier niet.',
}

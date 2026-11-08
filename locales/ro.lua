--[[
    Pigeon Cruise Control: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.ro = {
    title = 'Pilot automat',
    key_toggle = 'Pilot automat pornit / oprit',
    key_up = 'Pilot automat mai repede',
    key_down = 'Pilot automat mai încet',
    on = 'Pilot automat setat la {speed} {unit}.',
    off = 'Pilot automat oprit.',
    too_slow = 'Mergi cu cel puțin {speed} {unit} ca să setezi pilotul automat.',
    cant = 'Pilotul automat nu funcționează aici.',
}

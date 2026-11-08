--[[
    Pigeon Cruise Control: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.no = {
    title = 'Cruisekontroll',
    key_toggle = 'Cruisekontroll av / på',
    key_up = 'Cruisekontroll raskere',
    key_down = 'Cruisekontroll saktere',
    on = 'Cruisekontroll satt til {speed} {unit}.',
    off = 'Cruisekontroll av.',
    too_slow = 'Kjør minst {speed} {unit} for å sette cruisekontroll.',
    cant = 'Cruisekontroll virker ikke her.',
}

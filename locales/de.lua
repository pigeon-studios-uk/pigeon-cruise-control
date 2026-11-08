--[[
    Pigeon Cruise Control: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.de = {
    title = 'Tempomat',
    key_toggle = 'Tempomat an / aus',
    key_up = 'Tempomat schneller',
    key_down = 'Tempomat langsamer',
    on = 'Tempomat auf {speed} {unit} gesetzt.',
    off = 'Tempomat aus.',
    too_slow = 'Fahr mindestens {speed} {unit}, um den Tempomat zu setzen.',
    cant = 'Der Tempomat geht hier nicht.',
}

--[[
    Pigeon Cruise Control: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.it = {
    title = 'Cruise control',
    key_toggle = 'Cruise control on / off',
    key_up = 'Cruise control più veloce',
    key_down = 'Cruise control più lento',
    on = 'Cruise control impostato a {speed} {unit}.',
    off = 'Cruise control disattivato.',
    too_slow = 'Vai almeno a {speed} {unit} per impostare il cruise control.',
    cant = 'Il cruise control non funziona qui.',
}

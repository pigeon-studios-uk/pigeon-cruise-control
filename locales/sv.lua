--[[
    Pigeon Cruise Control: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sv = {
    title = 'Farthållare',
    key_toggle = 'Farthållare på / av',
    key_up = 'Farthållare snabbare',
    key_down = 'Farthållare långsammare',
    on = 'Farthållare satt till {speed} {unit}.',
    off = 'Farthållare av.',
    too_slow = 'Kör minst {speed} {unit} för att sätta farthållaren.',
    cant = 'Farthållaren fungerar inte här.',
}

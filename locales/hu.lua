--[[
    Pigeon Cruise Control: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hu = {
    title = 'Tempomat',
    key_toggle = 'Tempomat be / ki',
    key_up = 'Tempomat gyorsabban',
    key_down = 'Tempomat lassabban',
    on = 'Tempomat beállítva: {speed} {unit}.',
    off = 'Tempomat kikapcsolva.',
    too_slow = 'Menj legalább {speed} {unit} sebességgel a tempomat beállításához.',
    cant = 'A tempomat itt nem működik.',
}

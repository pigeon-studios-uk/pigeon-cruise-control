--[[
    Pigeon Cruise Control: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sl = {
    title = 'Tempomat',
    key_toggle = 'Tempomat vklop / izklop',
    key_up = 'Tempomat hitreje',
    key_down = 'Tempomat počasneje',
    on = 'Tempomat nastavljen na {speed} {unit}.',
    off = 'Tempomat izklopljen.',
    too_slow = 'Vozi vsaj {speed} {unit}, da nastaviš tempomat.',
    cant = 'Tempomat tukaj ne deluje.',
}

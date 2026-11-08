--[[
    Pigeon Cruise Control: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.da = {
    title = 'Fartpilot',
    key_toggle = 'Fartpilot til / fra',
    key_up = 'Fartpilot hurtigere',
    key_down = 'Fartpilot langsommere',
    on = 'Fartpilot sat til {speed} {unit}.',
    off = 'Fartpilot slået fra.',
    too_slow = 'Kør mindst {speed} {unit} for at slå fartpilot til.',
    cant = 'Fartpilot virker ikke her.',
}

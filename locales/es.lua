--[[
    Pigeon Cruise Control: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.es = {
    title = 'Control de crucero',
    key_toggle = 'Control de crucero sí / no',
    key_up = 'Control de crucero más rápido',
    key_down = 'Control de crucero más lento',
    on = 'Control de crucero a {speed} {unit}.',
    off = 'Control de crucero desactivado.',
    too_slow = 'Ve al menos a {speed} {unit} para activar el control de crucero.',
    cant = 'El control de crucero no funciona aquí.',
}

--[[
    Pigeon Cruise Control: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    title = 'Piloto automático',
    key_toggle = 'Piloto automático liga / desliga',
    key_up = 'Piloto automático mais rápido',
    key_down = 'Piloto automático mais lento',
    on = 'Piloto automático em {speed} {unit}.',
    off = 'Piloto automático desligado.',
    too_slow = 'Ande a pelo menos {speed} {unit} para ligar o piloto automático.',
    cant = 'O piloto automático não funciona aqui.',
}

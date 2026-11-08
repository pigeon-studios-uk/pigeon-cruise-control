--[[
    Pigeon Cruise Control: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fi = {
    title = 'Vakionopeudensäädin',
    key_toggle = 'Vakionopeudensäädin päälle / pois',
    key_up = 'Vakionopeudensäädin nopeammin',
    key_down = 'Vakionopeudensäädin hitaammin',
    on = 'Vakionopeudensäädin asetettu: {speed} {unit}.',
    off = 'Vakionopeudensäädin pois.',
    too_slow = 'Aja vähintään {speed} {unit} asettaaksesi vakionopeudensäätimen.',
    cant = 'Vakionopeudensäädin ei toimi täällä.',
}

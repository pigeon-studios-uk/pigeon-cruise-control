--[[
    Pigeon Cruise Control: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fr = {
    title = 'Régulateur de vitesse',
    key_toggle = 'Régulateur de vitesse on / off',
    key_up = 'Régulateur plus vite',
    key_down = 'Régulateur moins vite',
    on = 'Régulateur réglé à {speed} {unit}.',
    off = 'Régulateur désactivé.',
    too_slow = 'Roule à au moins {speed} {unit} pour activer le régulateur.',
    cant = 'Le régulateur ne fonctionne pas ici.',
}

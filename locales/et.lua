--[[
    Pigeon Cruise Control: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.et = {
    title = 'Püsikiirusehoidja',
    key_toggle = 'Püsikiirusehoidja sisse / välja',
    key_up = 'Püsikiirusehoidja kiiremini',
    key_down = 'Püsikiirusehoidja aeglasemalt',
    on = 'Püsikiirusehoidja seatud {speed} {unit}.',
    off = 'Püsikiirusehoidja väljas.',
    too_slow = 'Sõida vähemalt {speed} {unit}, et püsikiirusehoidja sisse lülitada.',
    cant = 'Püsikiirusehoidja siin ei tööta.',
}

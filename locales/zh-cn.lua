--[[
    Pigeon Cruise Control: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    title = '定速巡航',
    key_toggle = '定速巡航 开 / 关',
    key_up = '定速巡航 加速',
    key_down = '定速巡航 减速',
    on = '定速巡航已设为 {speed} {unit}。',
    off = '定速巡航已关闭。',
    too_slow = '车速至少达到 {speed} {unit} 才能开启定速巡航。',
    cant = '这里无法使用定速巡航。',
}

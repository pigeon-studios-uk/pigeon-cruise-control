--[[
    Pigeon Cruise Control: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    title = '定速巡航',
    key_toggle = '定速巡航 開 / 關',
    key_up = '定速巡航 加速',
    key_down = '定速巡航 減速',
    on = '定速巡航已設為 {speed} {unit}。',
    off = '定速巡航已關閉。',
    too_slow = '車速至少達到 {speed} {unit} 才能開啟定速巡航。',
    cant = '這裡無法使用定速巡航。',
}

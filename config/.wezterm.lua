local wezterm = require 'wezterm'
local config = {}


config.keys = {
-- ⌘ w でペインを閉じる（デフォルトではタブが閉じる）
    {
        key = "w",
        mods = "CMD",
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    -- ⌘ Ctrl ,で下方向にペイン分割
    {
        key = ",",
        mods = "CMD|CTRL",
        action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } },
    },
    -- ⌘ Ctrl .で右方向にペイン分割
    {
        key = ".",
        mods = "CMD|CTRL",
        action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } },
    },
    -- ⌘ Ctrl oでペインの中身を入れ替える
    {
        key = "o",
        mods = "CMD|CTRL",
        action = wezterm.action.RotatePanes 'Clockwise'
    },
    -- ⌘ Ctrl hjklでペインの移動
    {
        key = 'h',
        mods = 'CMD|CTRL',
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
        key = 'j',
        mods = 'CMD|CTRL',
        action = wezterm.action.ActivatePaneDirection 'Down',
    },
    {
        key = 'k',
        mods = 'CMD|CTRL',
        action = wezterm.action.ActivatePaneDirection 'Up',
    },
    {
        key = 'l',
        mods = 'CMD|CTRL',
        action = wezterm.action.ActivatePaneDirection 'Right',
    },
    -- ⌘ Ctrl Shift hjklでペイン境界の調整
    {
        key = 'h',
        mods = 'CMD|CTRL|SHIFT',
        action = wezterm.action.AdjustPaneSize { 'Left', 2 },
    },
    {
        key = 'j',
        mods = 'CMD|CTRL|SHIFT',
        action = wezterm.action.AdjustPaneSize { 'Down', 2 },
    },
    {
        key = 'k',
        mods = 'CMD|CTRL|SHIFT',
        action = wezterm.action.AdjustPaneSize { 'Up', 2 },
    },
    {
        key = 'l',
        mods = 'CMD|CTRL|SHIFT',
        action = wezterm.action.AdjustPaneSize { 'Right', 2 },
    },
}

return config

local wezterm = require 'wezterm'
local config = {}

-- [ rendering settings ] --
-- config.front_end = "WebGpu"
config.animation_fps = 240
config.max_fps = 240

-- [ style settings ] --
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 11
config.color_scheme = 'Catppuccin Mocha' -- ctp ftw
config.window_background_opacity = 0.6 -- haha TRANSparency holy shit kill me

config.window_frame = {
  font = wezterm.font { family = 'Torus SemiBold', weight = 'Bold' },
  -- The size of the font in the tab bar.
  -- Default to 10. on Windows but 12.0 on other systems
  font_size = 12.0,

  active_titlebar_bg = '#181825',
  inactive_titlebar_bg = '#181825',
}

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 2,
  right = 2,
  top = 1,
  bottom = 0,
}


--wezterm.window.colors = {
--  tab_bar = {
--    -- The color of the inactive tab bar edge/divider
--    inactive_tab_edge = '#575757',
--  },
--}


-- [ general settings ] --
config.check_for_updates = false

return config

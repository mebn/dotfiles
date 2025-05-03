local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrains Mono")
config.font_size = 10
-- config.line_height = 1.2

config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.send_composed_key_when_left_alt_is_pressed = true

return config

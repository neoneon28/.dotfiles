local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.enable_tab_bar = false -- remove tab bar
config.window_decorations = "RESIZE" -- remove window decorations
config.window_background_opacity = 0.95
config.macos_window_background_blur = 22

config.color_scheme = "Catppuccin Frappe"

config.audible_bell = "Disabled" -- disable sounds when at the end of doc

-- this is going to be used to toggle between color schemes
local function scheme_for_apperance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Frappe"
	else
		return "Catppuccin Latte"
	end
end

-- print(wezterm.gui.get_appearance())

-- config.color_scheme = scheme_for_apperance(wezterm.gui.get_apperanace()) -- get the current theme

config.font = wezterm.font("OperatorMonoSSmLig Nerd Font")
config.font_size = 14.0
-- config.font_weight
config.cursor_blink_rate = 800

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- config.window_background_image = "~/Documents/img-backgrounds/sacred-geometry.jpeg"
--
config.window_background_gradient = {
	orientation = "Vertical",
	colors = {
		"#1E1E2F",
		"#1E1E2F",
	},
	blend = "Rgb",
	interpolation = "Linear",
}

config.window_padding = {
	left = 44,
	right = 44,
	top = 33,
	bottom = 33,
}

-- config.default_prog = { 'zel', '-l', 'welcome'}

config.keys = {
	{
		key = "c",
		mods = "CMD",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
}

-- config.send_composed_key_when_left_alt_is_pressed = true
-- config.send_composed_key_when_right_alt_is_pressed = true

return config

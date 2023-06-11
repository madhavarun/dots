-- vim:foldmethod=marker
local wezterm = require("wezterm")

-- fonts I like, with the settings I prefer {{{
-- kept seperately from the rest of the config so that I can easily change them
local fonts = {
	fantasque = {
		font = "FantasqueSansMono Nerd Font",
		size = 15,
	},
}

local function get_font(name)
	return {
		font = wezterm.font_with_fallback({
			fonts[name].font,
			"FantasqueSansMono Nerd Font",
		}),
		size = fonts[name].size,
	}
end

-- }}}


local font = get_font("fantasque")

return {
--	disable_default_key_bindings = true,
	-- font
	font = font.font,
	font_size = font.size,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	-- window
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	-- don't attempt to resize the window (tiling wm)
	adjust_window_size_when_changing_font_size = false,
	-- theme
	color_scheme = "Catppuccin Mocha",
	-- nightly only
--	clean_exit_codes = { 130 },
	-- bell
	audible_bell = "Disabled",
	-- biggest mistake
	-- max_fps = 240,
	-- scrollbar, currently hidden by default, but better make sure
	enable_scroll_bar = false,
	-- hide_tab_bar_if_only_one_tab = true,
}

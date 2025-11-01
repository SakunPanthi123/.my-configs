local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

-- terminal essentials
config.audible_bell = "Disabled" -- beep sound

-- setting the color theme
config.enable_tab_bar = false
config.colors = {background = "#121111"}

config.underline_thickness = '4px'

-- turning off some overlapping keybinds
config.keys = {
    {
        key = "Enter",
        mods = "ALT",
        action = wezterm.action.DisableDefaultAssignment
    }
}

-- font configuration
config.font_size = 18
config.font = wezterm.font("GeistMono NFP")

config.enable_wayland = false

-- window configuration
config.window_background_opacity = 1
-- config.macos_window_background_blur = 0

-- window titlebar
config.window_decorations = "RESIZE"

-- background image
-- config.window_background_image = "/Users/sakunpanthi/Downloads/React19.png";
-- config.window_background_image_hsb = {
--   brightness = 0.1,
-- }

return config

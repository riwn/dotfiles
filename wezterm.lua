-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end
-- This is where you actually apply your config choices
config.keys = {
  {
    key = '0',
    mods = 'CTRL',
    action = wezterm.action.ResetFontAndWindowSize,
  },
}

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
config.window_background_opacity = 0.8
config.text_background_opacity = 0.7
config.font = wezterm.font("MesloLGS NF")

-- and finally, return the configuration to wezterm
return config

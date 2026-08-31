-- CpUnk Hyprland chrome. Port of the original hyprland.conf:
-- 8-stop black/steel active border, 3px gaps, square corners, rotating angle.
--
-- `omarchy theme install` strips *.lua. colors.toml still carries
-- hyprland_active_border so installed copies get the stripe, just not the spin.

local active_border_color = {
  colors = {
    "rgb(000000)",
    "rgb(000000)",
    "rgb(000000)",
    "rgb(aaacac)",
    "rgb(000000)",
    "rgb(000000)",
    "rgb(000000)",
    "rgb(aaacac)",
  },
  angle = 25,
}
local inactive_border_color = "rgb(000000)"

hl.config({
  general = {
    gaps_in = 3,
    gaps_out = 3,
    border_size = 3,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 0,
  },
})

hl.animation({ leaf = "borderangle", enabled = true, speed = 150, bezier = "linear", style = "loop" })

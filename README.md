# CpUnk — Omarchy Theme

A dark, cyberpunk-inspired theme for **Omarchy**, built around high contrast reds, deep blacks, and a gritty industrial aesthetic. Designed for Arch Linux + Hyprland users who want a sharp, aggressive desktop that still stays readable and minimal.

This tree targets **Omarchy Quattro** (4.x): Quickshell instead of Waybar/Walker/Mako, and a semantic `colors.toml` instead of an ANSI `color0`–`color15` list.

# Screenshot
<img width="1920" height="1080" alt="preview" src="https://github.com/user-attachments/assets/1a0a2d2e-2764-47b5-98f0-2801b8332977" />

<img width="2203" height="1240" alt="screenshot-2026-01-25_03-43-51" src="https://github.com/user-attachments/assets/c1db9041-d176-4c4c-a31f-47e6dcf585b7" />

<img width="2560" height="1600" alt="screenshot-2026-01-24_22-17-11" src="https://github.com/user-attachments/assets/60ac265c-b6e6-478c-9f2f-4466790334b0" />

<img width="2560" height="1600" alt="screenshot-2026-01-27_21-46-28" src="https://github.com/user-attachments/assets/ebc1c9b3-6c4b-4b29-a358-e99edce3aeb5" />

---

## Features

- Cyberpunk red & black color palette
- Semantic Quattro palette (`colors.toml`) so the bar, launcher, lock screen, terminals, and editors share one set of tokens
- Quickshell chrome (`shell.toml`) ported from the old Walker / Mako / hyprlock look
- Hyprland stripe border (black / steel, 25deg)
- Tuned for JetBrainsMono Nerd Font
- Clean, minimal UI with high contrast

---

## Install

```bash
omarchy theme install https://github.com/stannorbvb-cmd/cpunk
omarchy theme set cpunk
```

## What this repo can and cannot carry

`omarchy theme install` strips every `*.lua`, plus terminal configs and `vscode.json`, from a cloned theme — themes from the internet must not execute code. So this repo covers colour and chrome:

| File | What it does |
|---|---|
| `colors.toml` | Palette. Regenerates terminal, editor, and Hyprland border colours. |
| `shell.toml` | Quickshell: bar, popups, menus, notifications, tooltips, lock, polkit, launcher. |
| `hyprland.lua` | Tight gaps, 3px stripe border, rotating `borderangle`. **Kept only on a local/symlink copy** — stripped on `theme install`. The stripe still lands via `hyprland_active_border` in `colors.toml`. |
| `backgrounds/` | Wallpapers |
| `btop.theme`, `chromium.theme`, `icons.theme`, `keyboard.rgb`, `warp.yaml` | App extras |
| `preview.png` | Theme switcher thumbnail |

Terminal, Neovim (Aether v3), Ghostty, Kitty, Foot, and VS Code themes are generated from `colors.toml` at apply time.

---

## Requirements

- Arch Linux
- Omarchy 4.x (Quattro)
- Hyprland
- JetBrainsMono Nerd Font (recommended)

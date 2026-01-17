return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#040303", -- Default background
                base01 = "#7f6e6e", -- Lighter background (status bars)
                base02 = "#040303", -- Selection background
                base03 = "#7f6e6e", -- Comments, invisibles
                base04 = "#F3F3F3", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F3F3F3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#F82A2A", -- Variables, errors, red
                base09 = "#ff7f7f", -- Integers, constants, orange
                base0A = "#fef348", -- Classes, types, yellow
                base0B = "#D1D2D1", -- Strings, green
                base0C = "#babbbb", -- Support, regex, cyan
                base0D = "#aaacac", -- Functions, keywords, blue
                base0E = "#f76e78", -- Keywords, storage, magenta
                base0F = "#fff9a3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

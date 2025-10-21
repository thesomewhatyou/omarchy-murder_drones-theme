return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#181515", -- Default background
                base01 = "#4c4747", -- Lighter background (status bars)
                base02 = "#181515", -- Selection background
                base03 = "#4c4747", -- Comments, invisibles
                base04 = "#CFDFF5", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#CFDFF5", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b27676", -- Variables, errors, red
                base09 = "#d5afaf", -- Integers, constants, orange
                base0A = "#b3a693", -- Classes, types, yellow
                base0B = "#8caf88", -- Strings, green
                base0C = "#aacaca", -- Support, regex, cyan
                base0D = "#a3a3b3", -- Functions, keywords, blue
                base0E = "#CDAFC5", -- Keywords, storage, magenta
                base0F = "#dad3c8", -- Deprecated, brown/yellow
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

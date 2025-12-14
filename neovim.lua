return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#232829", -- Default background
                base01 = "#788587", -- Lighter background (status bars)
                base02 = "#232829", -- Selection background
                base03 = "#788587", -- Comments, invisibles
                base04 = "#dcdbd6", -- Dark foreground
                base05 = "#dcdbd6", -- Default foreground
                base06 = "#dcdbd6", -- Light foreground
                base07 = "#dcdbd6", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a49e84", -- Variables, errors, red
                base09 = "#ccc8b8", -- Integers, constants, orange
                base0A = "#b1ad95", -- Classes, types, yellow
                base0B = "#9cab8c", -- Strings, green
                base0C = "#c1c5b0", -- Support, regex, cyan
                base0D = "#a0997e", -- Functions, keywords, blue
                base0E = "#9f997e", -- Keywords, storage, magenta
                base0F = "#d9d6c9", -- Deprecated, brown/yellow
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

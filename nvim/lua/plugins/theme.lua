return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato", -- This sets the specific type to Macchiato
      transparent_background = false, -- Set to true if you want your terminal bg
      term_colors = true,
      integrations = {
        blink_cmp = false, -- Since we disabled blink earlier
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    },
  },

  -- Tell LazyVim to load catppuccin on startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

-- UI customization — colorscheme, statusline, dashboard
return {
  -- Catppuccin colorscheme (coordinated with Ghostty theme)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        cmp = true,
        gitsigns = true,
        neo_tree = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
        flash = true,
        mason = true,
        noice = true,
        notify = true,
        mini = { enabled = true },
      },
    },
  },
  -- Set catppuccin as the LazyVim colorscheme
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
}

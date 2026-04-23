-- Git integration
return {
  -- Diffview for side-by-side diffs (replaces old nvimdiff workflow)
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Diffview Open" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "File History" },
    },
  },
}

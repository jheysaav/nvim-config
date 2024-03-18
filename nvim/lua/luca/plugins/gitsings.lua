return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = {
    signcolumn = true,
  current_line_blame = true,
  current_line_blame_formatter = "<author>, <author_time:%d %b %Y> · <summary>",
  },
}

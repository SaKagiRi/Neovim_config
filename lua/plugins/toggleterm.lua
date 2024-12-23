return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    function(term)
      if term.direction == "horizontal" then
        return 17
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-\>]],
    direction = "float",
  },
}

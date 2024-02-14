---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
        vim.lsp.buf.format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M

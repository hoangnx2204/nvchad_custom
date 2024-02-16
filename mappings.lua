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

M.dartls = {
  -- config lsp for dart
  n = {
    ['K'] ={
      function()
        vim.lsp.buf.hover()
      end,
      'View hover documentation'
    },

    ['<leader>ca'] ={
      function()
        vim.lsp.buf.code_action()
      end,
      'Code action'
    },

    ['gd'] ={
      function()
        vim.lsp.buf.definition()
      end,
      'Go to definition'
    },

    ['gr'] ={
      function()
        vim.lsp.buf.references()
      end,
      'Find all references'
    },

    ['<leader>ra'] ={
      function()
        vim.lsp.buf.rename()
      end,
      'Rename'
    },
  },
  x = {
    ['<leader>ca'] ={
      function()
        vim.lsp.buf.range_code_action()
      end,
      'Code action'
    },
  }
}

M.tabufline = {
  n = {
    -- close other buffers
    ["<leader>xo"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
      end,
      "Close other buffers",
    },
  },
}
-- more keybinds!

return M

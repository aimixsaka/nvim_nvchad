---@type MappingsTable
local M = {}

M.disabled = {
  i = {
    ---------------- general ----------------
    ["<C-b>"] = "",
    ["<C-e>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },

  n = {
    ---------------- general ----------------
    ["<C-s>"] = "",
    ["<C-c>"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>ch"] = "",

    ---------------- lsp ----------------
    ["<leader>ls"] = "",
    ["<leader>D"] = "",
    ["<leader>ra"] = "",
    ["<leader>f"] = "",
    ["<leader>q"] = "",

    ---------------- nvimtree ----------------
    ["<C-n>"] = "",

    ---------------- telescope ----------------
    ["<leader>fw"] = "",
    ["<leader>cm"] = "",
    ["<leader>gs"] = "",

    ---------------- nvterm ----------------
    ["<A-i>"] = "",
  },

  t = {
    ---------------- nvterm ----------------
    ["<A-i>"] = "",
  }
}


M.general = {
  n = {
    ["<leader>s"] = { ":wall <CR>", "Save all" },
    ["<leader>y"] = { '"+y', "Copy to system" },
    ["<leader>cs"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
  }
}

M.lspconfig = {
  plugin = true,

  n = {
    ["<leader>sh"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>td"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>df"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["<leader>ds"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },
  }
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}

M.telescope = {
  plugin = true,
  
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },
  }
}

M.nvterm = {
  plugin = true,

  t = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  }
}

return M

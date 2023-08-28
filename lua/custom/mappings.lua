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
    -- ["<C-h>"] = "",
    -- ["<C-j>"] = "",
    -- ["<C-k>"] = "",
    -- ["<C-l>"] = "",

    ---------------- lsp ----------------
    ["<leader>ls"] = "",
    ["<leader>D"] = "",
    ["<leader>ra"] = "",
    ["<leader>f"] = "",
    ["<leader>q"] = "",

    ---------------- nvimtree ----------------
    -- ["<C-n>"] = "",

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
    ["<leader><Space>"] = { ":wall <CR>", "Save all", opts = { silent = true } },
    ["<leader>cs"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
  },

  v = {
    ["<leader>y"] = { '"+y', "Copy to system" },
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

M.NvimTmuxNavigator = {
  plugin = true,

  n = {
    ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft <CR>", "Move to left" },
    ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown <CR>", "Move to bellow" },
    ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp <CR>", "Move to above" },
    ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight <CR>", "Move to right" },
    -- ["<C-\\>"] = { "<cmd> NvimTmuxNavigateLastActive <CR>", "Move to last active" },
    -- ["<C-n>"] = { "<cmd> NvimTmuxNavigateNext <CR>", "Move to next" },
  },
}

return M

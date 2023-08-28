local present, wk = pcall(require, "which-key")

if not present then
  return
end

--wk.register( {
--  -- add group
--  ["<leader>"] = {
--    l = {name="+LSP"},
--    p = {name="+Packager"},
--    s = {name="+Surround"},
--    w = {name="+WhichKey"},
--  }
--})

wk.register({
  ["<leader>"] = {
    c = {
      name = "code action;jump context;map cheatsheet",
    },

    d = {
      name = "diagnostic",
    },

    f = {
      name = "find",
    },

    g = {
      name = "git",
    },

    m = {
      name = "telescope bookmark",
    },

    p = {
      name = "preview hunk;pick hidden term",
    },

    r = {
      name = "reset hunk;lsp rename",
    },

    s = {
      name = "lsp signature",
    },

    t = {
      name = "difinition help;themes"
    },

    w = {
      name = "which-key;workspace"
    },

  }
})

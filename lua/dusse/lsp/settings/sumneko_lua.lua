return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "extend", "default_schemas", "pcall", "require" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}

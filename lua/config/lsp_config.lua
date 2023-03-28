import({"mason", "mason-lspconfig", "lspconfig", "rust-tools"}, function(modules)
  modules.mason.setup()
  modules["mason-lspconfig"].setup {
    ensure_installed = { "lua_ls", "tsserver", "rust_analyzer", "gopls" },
  }

  modules["mason-lspconfig"].setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
      modules["lspconfig"][server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    ["rust_analyzer"] = function ()
      modules["rust-tools"].setup {}
    end,
    ["lua_ls"] = function ()
      modules["lspconfig"].lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "import" },
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
    end
  }
end)

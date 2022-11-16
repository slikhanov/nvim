import('nightfox', function(nightfox)
  nightfox.setup({
    options = {
      styles = {
        comments = "italic",
      }
    }
  })

  -- Load the colorscheme
  vim.cmd[[colorscheme nordfox]]
end)


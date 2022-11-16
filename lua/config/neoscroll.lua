-- Only load smooth scrolling plugin when we are in standard console Neovim.
-- Neovide has much better scrolling support out of the box.
if vim.g.neovide then
  return
end

import('neoscroll', function(neoscroll)
  neoscroll.setup {
    easing_function = "quadratic",
    performance_mode = false
  }
end)


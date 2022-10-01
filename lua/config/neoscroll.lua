-- Only load smooth scrolling plugin when we are in standard console Neovim.
-- Neovide has much better scrolling support out of the box.
if vim.g.neovide then
  return
end

local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end

neoscroll.setup {
  easing_function = "quadratic",
  performance_mode = false
}


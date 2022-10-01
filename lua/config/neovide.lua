if vim.g.neovide then
  vim.opt.guifont = { "FiraCode Nerd Font", ":h15" }
  vim.g.neovide_refresh_rate_idle = 5 -- Refresh rate when application not in focus
  vim.g.neovide_cursor_trail_size = 0.1 
  vim.g.neovide_floating_blur_amount_x = 5.0 -- Floating window blur size x, y
  vim.g.neovide_floating_blur_amount_y = 5.0
  vim.g.neovide_cursor_vfx_mode = "pixiedust" -- Some fun particles
end

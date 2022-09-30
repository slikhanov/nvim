local colorscheme = "nightfox"

local status_ok, _ = pcall(require, "config.colorschemes." .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


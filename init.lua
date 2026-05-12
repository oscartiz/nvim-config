-- Make luarocks packages (e.g. magick for image.nvim) visible to Neovim
package.path = package.path
  .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"
  .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load user config
require("user.options")
require("user.keymaps")

-- Setup lazy.nvim with plugins from lua/user/plugins.lua
require("lazy").setup("user.plugins", {
  change_detection = {
    notify = false,
  },
  ui = {
    keys = {
      close = "<Esc>",
    },
  },
})

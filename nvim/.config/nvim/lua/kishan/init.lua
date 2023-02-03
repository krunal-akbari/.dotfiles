local ok, plenary_reload = pcall(require, "plenary.reload")
local reloader = require
if ok then
  reloader = plenary_reload.reload_module
end

P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(...)
  return reloader(...)
end

R = function(name)
  RELOAD(name)
  return require(name)
end

require("kishan.map")
require("kishan.git")
require("kishan.harpoon")
require("kishan.refact")
require("kishan.song")
require("kishan.ppt").setup()
require("kishan.lualine")
require("kishan.telescope")

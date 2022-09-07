-- custom.plugins.telescope
local present, telescope = pcall(require, "telescope")

if not present then
  return
end

local extensions = {"project"}

pcall(function()
  for _, ext in ipairs(extensions) do
    telescope.load_extension(ext)
  end
end)
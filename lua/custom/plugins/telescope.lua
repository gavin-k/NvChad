-- custom.plugins.telescope

local telescope = require "telescope"
local extensions = {"project"}

for _, ext in ipairs(extensions) do
  telescope.load_extension(ext)
end

-- require'telescope'.extensions.project.project{ display_type = 'full' }
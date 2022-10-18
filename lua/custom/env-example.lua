-- used for private info
-- Just an example, supposed to be placed in /lua/custom/env.lua
local M = {}

-- configure for telescope project ext
M.project_base_dirs = {
    '~/dev/src',
    {'~/dev/src2'},
    {'~/dev/src3', max_depth = 4},
    {path = '~/dev/src4'},
    {path = '~/dev/src5', max_depth = 2},
}

return M

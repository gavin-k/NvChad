
local helper = {}
-- https://stackoverflow.com/a/27028488
-- :lua print('var: ', require'custom.helper'.dump(vim.tbl_deep_extend('force', require'telescope.themes'.get_dropdown(), {display_type = 'full'})))
function helper.dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

return helper

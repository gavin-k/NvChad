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

--- Add button for alpha dashboard
---@param sc string shortcut
---@param txt string describe
---@param keybind string vim command
-- example button("SPC t h", "  Projects  ", ":Telescope project<CR>"),
function helper.button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 5,
        width = 36,
        align_shortcut = "right",
        hl = "AlphaButtons"
    }

    if keybind then
        opts.keymap = {"n", sc_, keybind, {
            noremap = true,
            silent = true
        }}
    end

    return {
        type = "button",
        val = txt,
        on_press = function()
            local key = vim.api.nvim_replace_termcodes(sc_, true, false, true) or ""
            vim.api.nvim_feedkeys(key, "normal", false)
        end,
        opts = opts
    }
end

return helper

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.typ" },
    callback = function()
        local search_string = '$"\\(\\){}\\[\\]*_'
            vim.api.nvim_buf_set_keymap(
                vim.api.nvim_get_current_buf(),
                "i",
                "<Tab>",
                "<Cmd>w<CR><left><C-o>/[" .. search_string .. "]<CR><Cmd>let @/=@9<CR><right>",
                { noremap = true }
            )
            vim.api.nvim_buf_set_keymap(
                vim.api.nvim_get_current_buf(),
                "i",
                "<S-Tab>",
                "<Cmd>w<CR><left><C-o>?[" .. search_string .. "]<CR><Cmd>let @/=@9<CR>",
                { noremap = true }
            )
    end,
})

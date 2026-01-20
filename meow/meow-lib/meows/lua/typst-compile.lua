vim.api.nvim_create_user_command("TypstCompile", function()
    -- local root = require("core.macros").get_root()
    local cap_out = ""

    local function cap_stdout(_, data, _)
        if data then
            cap_out = cap_out .. table.concat(data, "\n")
        end
    end

    local term_notification = function(_, exit_code, _)
        if exit_code == 0 then
            vim.notify("Document compiled successfully!", vim.log.levels.INFO, {})
        else
            vim.notify("Document compilation failed!\nReason: " .. cap_out, vim.log.levels.ERROR, {})
        end
    end

    vim.fn.jobstart({
        "typst",
        "compile",
        -- "--root",
        -- root,
        vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
    }, {
        stdout_buffered = true,
        on_stdout = cap_stdout,
        on_stderr = cap_stdout,
        on_exit = term_notification,
    })
end, {})

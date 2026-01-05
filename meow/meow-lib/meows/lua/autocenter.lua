vim.o.scrolloff = math.floor(vim.fn.winheight(0) / 2 + 1)
vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.o.scrolloff = math.floor(vim.fn.winheight(0) / 2 + 1)
  end
});

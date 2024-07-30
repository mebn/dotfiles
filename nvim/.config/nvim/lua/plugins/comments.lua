-- (un)comment with gcc, gc, gcip etc

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "java" },
    callback = function()
        vim.opt_local.commentstring = "// %s"
    end
})
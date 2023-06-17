local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true
    },
    ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "yaml",
        "toml",
        "html",
        "css",
        "markdown",
        "graphql",
        "lua",
        "go",
        "dockerfile",
        "gitignore",
        "vim",
        "bash"
    },
    auto_install = true
})

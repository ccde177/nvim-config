require('nvim-treesitter.configs').setup{
    ensure_installed = {"rust", "c", "javascript", "toml", "python", "lua", "json", "html", "css", "bash"},
    sync_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = false,
        disable = { "yaml" },
    },
}

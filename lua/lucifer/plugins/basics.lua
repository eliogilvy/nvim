return {
    {
        'nvim-lua/plenary.nvim',
        name = 'plenary'
    },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    {
        'folke/neoconf.nvim',
        cmd = 'Neoconf'
    },
    'folke/neodev.nvim',
    {
        'nvim-tree/nvim-web-devicons',
        name = 'icons',
    }
}

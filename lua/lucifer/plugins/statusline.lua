return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        opts = true,
    },
    config = function()
        require('lualine').setup {
            options = {
                theme = 'catppuccin',
            },
            sections = {
                lualine_x = { 'filetype' },
                lualine_y = { 'searchcount' },
            },
        }
    end,

}

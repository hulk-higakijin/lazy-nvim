return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    config = function()
      require('neo-tree').setup({
        filesystem = {
          filtered_items = {
            visible = true, -- 隠しファイルをデフォルトで表示
          },
        },
      })
    end,
  },
}

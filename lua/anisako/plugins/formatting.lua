return {
  -- detect tabstop and shiftwidth automatically
  {'tpope/vim-sleuth'},

  -- add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {
      indent = { char = "|" },
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numtostr/comment.nvim', opts = {} },

  {
    'stevearc/dressing.nvim',
    opts = {},
  },

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}

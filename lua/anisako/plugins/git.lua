return {
  {
    'tpope/vim-fugitive'
  },
  {
    "rbong/vim-flog",
    lazy = false,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
    config = function ()
      vim.keymap.set("n", "<leader>gl", ":Flog <CR>")
    end
  },
}


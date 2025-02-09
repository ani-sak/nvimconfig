-- return {
--   "EdenEast/nightfox.nvim",
--   config = function ()
--     vim.cmd("colorscheme carbonfox")
--   end
-- }

-- return
--   {
--     'navarasu/onedark.nvim',
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme 'onedark'
--       require('onedark').setup {
--         style = 'darker',
--       }
--       require('onedark').load()
--     end,
--   }
--

return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function ()
    require("rose-pine").setup({
      variant = "main",
      styles = {
        italic = false,
        -- transparency = true,
      },
    })
    vim.cmd("colorscheme rose-pine-main")
  end
}

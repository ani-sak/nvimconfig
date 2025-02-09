return
	{
		'akinsho/flutter-tools.nvim',
		lazy = false,
		dependencies = {
			'nvim-lua/plenary.nvim',
			'stevearc/dressing.nvim', -- optional for vim.ui.select
		},
		enabled = (vim.loop.os_uname().sysname == "Windows_NT"),
		config = function ()
			require("flutter-tools").setup {
				lsp = {
					color = {
						enabled = true,
					},
					on_attach = function(_, bufnr)
						local nmap = function(keys, func, desc)
							if desc then
								desc = 'LSP: ' .. desc
							end

							vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
						end

						nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
						nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

						nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
						nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]efinition')
						nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
						nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
						nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
						nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
						nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

						nmap('K', vim.lsp.buf.hover, 'Hover Documentation')

						vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
							vim.lsp.buf.format()
						end, { desc = 'Format current buffer with LSP' })
					end,
					capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
				},
			}
		end,
	}

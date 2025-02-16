local M = {}  
  
function M.config()  
	require('lspconfig').gdscript.setup{capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())}
	require('lspconfig').clangd.setup{}
	require('lspconfig').rust_analyzer.setup({
		on_attach=on_attach,
		settings = {
			["rust-analyzer"] = {
				imports = {
					granularity = {
						group = "module",
					},
					prefix = "self",
				},
				cargo = {
					buildScripts = {
						enable = true,
					},
				},
				procMacro = {
					enable = true
				},
			}
		}
	})

	local cmp = require'cmp'

	cmp.setup({
		mapping = {
			['<C-k>'] = cmp.mapping.select_prev_item(),
			['<C-j>'] = cmp.mapping.select_next_item(),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.close(),
			['<CR>'] = cmp.mapping.confirm({ 
				select = true,
            	behavior = cmp.ConfirmBehavior.Replace
			}),
		},
		sources = {
			{
				name = 'nvim_lsp'
			},
			{
				name='buffer'
			}
		}
	})
end  
  
return M
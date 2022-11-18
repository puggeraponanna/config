require("plugins")

vim.cmd
[[
    augroup change_cursor
        au!
        au ExitPre * :set guicursor=a:hor20
    augroup END

	set tabstop     =4
	set softtabstop =4
	set shiftwidth  =4
	set expandtab

	colorscheme gruvbox
	let g:gruvbox_contrast_dark='hard'

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	nnoremap <silent> K :call ShowDocumentation()<CR>

	function! ShowDocumentation()
		if CocAction('hasProvider', 'hover')
			call CocActionAsync('doHover')
		else
			call feedkeys('K', 'in')
		endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)
	
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
	let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
	let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
	let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
	let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
	let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
	let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_functions = 1
	let g:go_highlight_function_calls = 1
	let g:go_highlight_operators = 1
	let g:go_highlight_extra_types = 1

]] 


local opt = vim.opt -- set options

local TAB_WIDTH = 4
opt.tabstop = TAB_WIDTH
opt.softtabstop = TAB_WIDTH
opt.shiftwidth = TAB_WIDTH
opt.relativenumber = true
opt.number = true
opt.termguicolors = true
opt.signcolumn = "number"
opt.guicursor = "n-v-c:block,i-ci-ve:hor20,r-cr:hor20,o:hor50"


vim.keymap.set('n', '<Leader>ff', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<Leader>fg', '<Cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<Leader>fh', '<Cmd>Telescope help_tags<cr>')
vim.keymap.set('i', '<silent><expr> <c-space>', 'coc#refresh()')
vim.keymap.set('n', '<C-t>', '<Cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<Leader>n', '<Cmd>NvimTreeFocus<cr>')
vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeRefresh<cr>')


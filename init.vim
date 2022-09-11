" plugins--
call plug#begin(stdpath('data') . '/plugged')
	Plug 'neovim/nvim-lspconfig'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'altercation/vim-colors-solarized'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver' ]
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'jiangmiao/auto-pairs'
  Plug 'sheerun/vim-polyglot'
	Plug 'lifepillar/vim-solarized8'
	Plug 'svrana/neosolarized.nvim'
Plug 'vim-scripts/Zenburn'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	let g:airline_theme='solarized'
	let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-surround'
	"Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'
	Plug 'tpope/vim-fugitive'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-commentary'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()
nmap ; :
source ~/.config/nvim/plug-config/coc.vim

"basic config stuff
noremap <space> :
set nocompatible
if (has("termguicolors"))
	set termguicolors
endif
set background=dark
colorscheme solarized8
set cursorline
set hidden
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
syntax on
filetype indent on
set autoindent
set number
set relativenumber
set nobackup
set laststatus=2
set statusline=%F%m%r%h%w=(%{&ff}/%y)\ %l\/%L,\ col\ %c)\
set wildmenu
let g:python_host_prog="/usr/local/bin/python3"

" folding----
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual

" nerdtree--
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Fuzzy Finder -----
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Closetag -------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*js,*.tsx,*.jsx'
let g:closetag_xhmtl_filesnames = '*.xhmtl, *.jsx'
let g:closetag_filetypes = 'html, xhtml, phtml, js, tsx, jsx' 
let g:closetag_xhtml_filetypes = 'xhtml, jsx'
let g:closetag_emptyTags_caseSensitive = 1 
let g:closetag_regions = {
		\ 'typescript.tsx': 'jsxRegion,tsxRegion',
		\ 'javascript.jsx': 'jsxRegion',
		\ 'typescriptreact': 'jsxRegion,tsxRegion',
		\ 'javascriptreact': 'jsxRegion',
		\	}
let g:closetag_shortcut ='>'
let g:closetag_close_shortcut = '<leader>>'

" vim-go --------
let g:go_def_mapping_enabled = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

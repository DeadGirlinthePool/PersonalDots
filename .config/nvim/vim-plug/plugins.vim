call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

	" Amora colorscheme
	Plug 'owozsh/amora'

	" An additional syntax hightlighter
	Plug 'lervag/vimtex'	

	" Trying out Airline statusline
	Plug 'vim-airline/vim-airline'

	"Theme Pack for Airline
	Plug 'vim-airline/vim-airline-themes'

	call plug#end()

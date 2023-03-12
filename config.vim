if !exists("config_loaded")
	syntax enable
	set nocompatible
	set bs=2
	set tabstop=4
	set shiftwidth=4
	set undolevels=1000
	set background=dark
	set nohlsearch
	set modeline
	set modelines=2
	set title
	let loaded_matchparen = 1
	set encoding=utf-8
	set fileencodings=ascii,utf-8
	set fenc=latin1
	set fileformats=unix,dos

	set number
	set relativenumber

	set ignorecase
	set smartcase

	set autoindent
	set smartindent

	set list
	set listchars=tab:▸\ ,eol:¬

	set undofile
	set gdefault

	set wrap
	set textwidth=79
	set formatoptions=qrn1
	set colorcolumn=85

	set splitbelow
	set splitright
	map <Leader>tt :tabedit 

	set noerrorbells
	set visualbell

	" disable help key
	inoremap <F1> <ESC>
	nnoremap <F1> <ESC>
	vnoremap <F1> <ESC>

	set wildignore+=*/vendor/*,*/node_modules/*,*/puppet/modules/*
	au BufNewFile,BufRead *nagios/*.cfg set filetype=nagios

	au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4 nolist
	au BufNewFile,BufRead Makefile setlocal noet ts=4 sw=4 sts=4 nolist
	au BufNewFile,BufRead *.hcl setlocal noet ts=2 sw=2 sts=2 nolist

	map! <Leader>u <C-R>=system('uuid \| xargs echo -n')<CR>
	let config_loaded = 1
endif

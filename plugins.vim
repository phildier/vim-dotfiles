filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Syntastic'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'taglist.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'mhinz/vim-startify'
Plugin 'joonty/vdebug'
Plugin 'mxw/vim-jsx'
Plugin 'godlygeek/tabular'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on

" make vim-airline appear always
set laststatus=2

hi EasyMotionTarget ctermbg=none ctermfg=white
hi EasyMotionShade  ctermbg=none ctermfg=blue

" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php', 'phpmd']
let g:syntastic_ruby_mri_exec = 'ruby'
let g:syntastic_javascript_checkers = ['eslint']

map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

map <Leader>ss :tabnew<CR>:Startify<CR>

let g:startify_list_order = ['dir', 'sessions']
let g:startify_files_number = 20
let g:startify_session_number = 20
let g:startify_custom_header = []
let g:startify_change_to_vcs_root = 1

let g:vdebug_keymap = { 'run': '<Leader>d' }
let g:vdebug_options = { 'path_maps': {"/home/srv/www/central/central.tapdemo.com/": "/home/phil/dev/tapclicks/tapclicks-app/"}}

let g:terraform_align=1
let g:terraform_fmt_on_save=1

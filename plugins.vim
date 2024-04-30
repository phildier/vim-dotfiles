filetype off
call plug#begin('~/.vim/bundle')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
" Plug 'topope/fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/taglist.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'mhinz/vim-startify'
" Plug 'joonty/vdebug'
Plug 'mxw/vim-jsx'
Plug 'godlygeek/tabular'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'github/copilot.vim'

call plug#end()

filetype plugin indent on

" specify node path for copilot
let g:copilot_node_command = "/home/phil/.asdf/installs/nodejs/16.20.2/bin/node"

" make vim-airline appear always
set laststatus=2

hi EasyMotionTarget ctermbg=none ctermfg=white
hi EasyMotionShade  ctermbg=none ctermfg=blue

" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php', 'phpmd']
let g:syntastic_ruby_mri_exec = 'ruby'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_yaml_checkers = [ "yamllint" ]

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

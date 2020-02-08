" Vim-Plug plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'heavenshell/vim-pydocstring'
Plug 'davidhalter/jedi-vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Syntastic suggested settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4
let g:syntastic_aggregate_errors = 1

let g:syntastic_python_checkers = ['pylint']
autocmd VimEnter * SyntasticToggleMode

" NERDTree settings
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['__pycache__']
let g:NERDTreeWinSize=21
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" NERD Commenter key bindings
nmap <C-k> :call NERDComment('n', 'toggle')<CR>
vmap <C-k> :call NERDComment('v', 'toggle')<CR>

" Gitgutter settings
set updatetime=500

" Pydocstring key bindings
nmap <silent> <C-J> <Plug>(pydocstring)

" Jedivim settings
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = "2"

" Tagbar settings
nmap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0

"Custom settings
set nu
set showcmd
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set softtabstop=2
set hlsearch
"set foldmethod=syntax

"autocommands
autocmd BufNewFile,BufReadPost *.frag,*.vert set syntax=c
"autocmd BufWritePost,FileWritePost *.tex silent execute "!pdflatex %" | redraw!

"abbreviations
ab ipdb import ipdb; ipdb.set_trace()<CR>print("HERE")

"f key mappings
map <F3> :set spell spelllang=en_gb<CR>
map <F4> :set nospell<CR>
map <F5> :!python3 %<CR>

" Custom file types
au BufRead,BufNewFile *.mq5 setfiletype cpp
au BufRead,BufNewFile *.mqh setfiletype cpp

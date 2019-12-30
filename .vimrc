" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'majutsushi/tagbar'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
" Initialize plugin system
call plug#end()


let g:airline#extensions#tabline#enabled = 1

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab


set nu 
"设置行号
syntax on 
"语法高亮
set hlsearch 
"设置高亮搜索
set autoread
"改变以后自动读取

"vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256      
let g:solarized_termtrans =   0       
let g:solarized_degrade   =   0       
let g:solarized_bold      =   1       
let g:solarized_underline =   1       
let g:solarized_italic    =   1       
let g:solarized_contrast  =   "normal"
let g:solarized_visibility=   "normal"

"vim-airline-themes
let g:airline_theme='molokai'

" NERDTree config
noremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"youcompleteme
let g:ycm_global_ycm_extra_conf = '/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf ="~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py"
noremap <F12> :YcmCompleter GoTo<CR>
"map <F11> :YcmCompleter GoToDeclaration<CR>

"tagbar
noremap <F3> :TagbarToggle<CR>
"generate compile_commands.json for ycm
noremap <F7> :! compiledb make<CR>
"alt+d
noremap <S-d> :Gdiffsplit<CR>
noremap <S-s> :Gstatus<CR>
noremap <S-w> :Gwrite<CR>

noremap <S-r> :Gread<CR>

noremap <C-p> :FZF /<CR>
noremap <C-f> :Rg .<CR>


"python-mode
"let g:pymode_rope_goto_definition_bind = '<F11>' //not working
"let g:pymode_rope_goto_definition_cmd = 'vnew'

set smartindent


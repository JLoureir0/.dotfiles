call plug#begin('~/.config/nvim/plugged')

Plug 'bling/vim-airline'                            " Vim status bar
Plug 'vim-airline/vim-airline-themes'               " Airline Themes
Plug 'tpope/vim-fugitive'                           " Vim plugin for git
Plug 'tpope/vim-surround'                           " Plugin for tags
Plug 'altercation/vim-colors-solarized'             " Solarized theme
Plug 'kien/ctrlp.vim'                               " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'rking/ag.vim'                                 " Vim plugin for the_silver_searcher
Plug 'scrooloose/nerdcommenter'                     " Vim plugin for intensely orgasmic commenting
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Snippets Plugins
Plug 'mattn/webapi-vim'                             " vim interface to Web API
Plug 'mattn/gist-vim'                               " vimscript for gist
Plug 'majutsushi/tagbar'                            " a class outline viewer for Vim
Plug 'godlygeek/tabular'                            " Vim script for text filtering and alignment
Plug 'danro/rename.vim'                             " Rename current file
Plug 'Chiel92/vim-autoformat'                       " Provide easy code formatting in Vim

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

" Load ftplugins and indent files
filetype plugin on
filetype indent on

" Enable syntax highlighting
filetype off
syntax on

" Background
set background=dark

" Color scheme
colorscheme solarized
hi MatchParen cterm=bold ctermbg=none ctermfg=208 "Little tweak with the matching parents colors

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\(\s\+$\)\|\(^\n$\)/

" Better split opening
set splitright
set splitbelow

"Rebind ESC key
inoremap ii <ESC>

" Rebind <Leader> key
let mapleader = ","

"VIMRC
map <leader>rc :vsplit ~/DotFiles/vimrc<cr>

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> <C-C>:nohl<CR>
inoremap <C-n> <C-O>:nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quickquit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

" Folding
set foldmethod=syntax
set foldlevelstart=100

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" map git commands
map <leader>gs  :!clear && git status -s<cr>
map <leader>gr  :!clear && git reset<space>
map <leader>gR  :!clear && git reset --hard<space>
map <leader>gl  :!clear && git log<cr>
map <leader>gd  :!clear && git diff<cr>
map <leader>gc  :!clear && git add -A . && git commit --verbose<cr>
map <leader>gp  :!clear && git push -u origin master<cr>
map <leader>gpl :!clear && git pull<cr>
map <leader>gb  :!clear && git checkout -b<space>
map <leader>gx  :!clear && git checkout<space>
map <leader>gm  :!clear && git merge<space>

" Showing line numbers and length
set number " show line numbers
set tw=120 " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap text when typing
set colorcolumn=120
"highlight ColorColumn ctermbg=233 " wombat256mod
highlight ColorColumn ctermbg=240  " molokai

" easier formatting of paragraphs
vmap Q gp
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup files and swap files
set nobackup
set nowritebackup
set noswapfile

                              """""""""""""""""""""""""""""""""""""""""""""""""""
                              "                                                 "
                              "                     Plugins                     "
                              "                                                 "
                              """""""""""""""""""""""""""""""""""""""""""""""""""

" Vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" Ctrlp plugin settings
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v[\/](node_modules|lib)$'
set wildignore+=*.jpg,*.jpeg,*.png*,*.o,*.d,*.pyc

" Gist plugin settings
let g:gist_detect_filetype = 1 " Detect filetype
let g:gist_open_browser_after_post = 1 " Open browser after the post
map <leader>gi :Gist<cr>

" Silver Searcher
map <leader>a :Ag!<space>
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"<cr>

" UltiSnips keybindings
let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsJumpForwardTrigger='<TAB>'
let g:UltiSnipsJumpBackwardTrigger='<s-TAB>'

" Tagbar
noremap  <F8> :TagbarToggle<CR>
vnoremap <F8> <C-C>:TagbarToggle<CR>
inoremap <F8> <C-O>:TagbarToggle<CR>

" Tabularize
nnoremap <leader>ta :Tabularize /
vnoremap <leader>ta <ESC>:Tabularize /

" NERDTree
map <C-t> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeHighlightCursorline = 1 " Use cursorline
let NERDTreeMapActivateNode='<CR>' " Use return/enter key

" Autoformat
noremap <leader>f :Autoformat <CR>

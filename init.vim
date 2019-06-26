" Automatic reloading of init.vim
autocmd! bufwritepost init.vim source %

" Vim-plug ----------------------------------------------------------{{{

call plug#begin('~/.config/nvim/plugged')

" Core Plugins {{{
Plug 'bling/vim-airline'                            " Vim status bar
Plug 'vim-airline/vim-airline-themes'               " Airline Themes
Plug 'tpope/vim-fugitive'                           " Vim plugin for git
Plug 'jreybert/vimagit'                             " Ease your git workflow within Vim
Plug 'tpope/vim-surround'                           " Plugin for tags
Plug 'connorholyday/vim-snazzy'                     " Snazzy theme for vim
Plug 'ctrlpvim/ctrlp.vim'                           " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'rking/ag.vim'                                 " Vim plugin for the_silver_searcher
Plug 'scrooloose/nerdcommenter'                     " Vim plugin for intensely orgasmic commenting
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Snippets Plugins
Plug 'majutsushi/tagbar'                            " a class outline viewer for Vim
Plug 'junegunn/vim-easy-align'                      " Vim script for text filtering and alignment
Plug 'danro/rename.vim'                             " Rename current file
Plug 'Chiel92/vim-autoformat'                       " Provide easy code formatting in Vim
Plug 'ryanoasis/vim-devicons'                       " adds font icons
Plug 'Raimondi/delimitMate'                         " provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'neomake/neomake'                              " A plugin for asynchronous :make using Neovim's job-control functionality
Plug 'Shougo/deoplete.nvim'                         " Dark powered asynchronous completion framework for neovim
Plug 'easymotion/vim-easymotion'
      \ | Plug 'haya14busa/vim-easyoperator-line'
      \ | Plug 'haya14busa/vim-easyoperator-phrase' " Vim motions on speed!
Plug 'wellle/targets.vim'                           " Vim plugin that provides additional text objects
Plug 'ntpeters/vim-better-whitespace'               " Better whitespace highlighting for Vim

" }}}

" On-demand loading {{{
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }           " A tree explorer plugin for vim.
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim', { 'on': 'Gist' } " vimscript for gist
Plug 'elzr/vim-json', { 'for': 'json' }                           " A better JSON for Vim
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'xml'] }        " A Vim plugin that always highlights the enclosing html/xml tags
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }                " vim plug-in which provides support for expanding abbreviations similar to emmet
Plug 'Shougo/neco-vim', { 'for': 'vim' }                          " The vim source for neocomplete/deoplete
Plug 'itchyny/calendar.vim', { 'on': 'Calendar'}                  " A calendar application for Vim

" }}}

call plug#end()

" }}}

" Core Settings ----------------------------------------------------------{{{

" Load ftplugins and indent files
filetype plugin on
filetype indent on

" Better copy & paste
set clipboard=unnamedplus

" Enable mouse in all modes
set mouse=a

" Enable syntax highlighting
filetype off
syntax on

" Background
set background=dark

" Cursor behaviour
set guicursor=a:block-blinkon30

" Color scheme
colorscheme snazzy
hi MatchParen cterm=bold ctermbg=none ctermfg=208 "Little tweak with the matching parents colors
set lazyredraw " Fixing the slow scroll due to buggy colorscheme regex's

" Better split opening
set splitright
set splitbelow

" Rebind <Leader> key
let mapleader = ","

"init.vim
map <leader>rc :vsplit ~/DotFiles/init.vim<cr>

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
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" easier moving between tabs
map <Leader>n <esc>:bp<CR>
map <Leader>m <esc>:bn<CR>

" unload buffer
map <Leader>d <esc>:bd<CR>

" only current buffer
map <leader>o <esc>:only<cr>

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
set relativenumber "Relative of cursor position
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

" }}}

" PLUGINS OPTIONS ----------------------------------------------------------{{{

                              """""""""""""""""""""""""""""""""""""""""""""""""""
                              "                                                 "
                              "                     Plugins                     "
                              "                                                 "
                              """""""""""""""""""""""""""""""""""""""""""""""""""

" Vim-airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='atomic'
let g:airline#extensions#tabline#enabled = 1
" }}}

" Ctrlp plugin settings {{{
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|lib)$'
set wildignore+=*.jpg,*.jpeg,*.png*,*.o,*.d,*.pyc,*.class
" }}}

" Magit {{{
map <leader>g :Magit<cr>
" }}}

" Gist plugin settings {{{
let g:gist_detect_filetype = 1 " Detect filetype
let g:gist_open_browser_after_post = 1 " Open browser after the post
map <leader>gi :Gist<cr>
" }}}

" Silver Searcher {{{
map <leader>a :Ag!<space>
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"<cr>
" }}}

" UltiSnips keybindings {{{
let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsJumpForwardTrigger='<TAB>'
let g:UltiSnipsJumpBackwardTrigger='<s-TAB>'
" }}}

" Tagbar {{{
noremap  <F8> :TagbarToggle<CR>
vnoremap <F8> <C-C>:TagbarToggle<CR>
inoremap <F8> <C-O>:TagbarToggle<CR>
" }}}

" EasyAlign {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" NERDTree {{{
map <C-t> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeHighlightCursorline = 1 " Use cursorline
let NERDTreeMapActivateNode='<CR>' " Use return/enter key
" }}}

" Autoformat {{{
noremap <leader>f :Autoformat <CR>
" }}}

" Vim-JSON {{{
let g:vim_json_syntax_conceal = 0
" }}}

" NeoMake {{{
let g:neomake_java_enabled_makers = ['javac']

autocmd! BufWritePost * Neomake
" }}}

" Deoplete {{{
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" }}}

" EasyMotion {{{
let g:EasyMotion_startofline = 0 " keep cursor on current column after J and K motion
let g:EasyMotion_smartcase = 1 " work similarly to Vim's smartcase option for G and g motion
let g:EasyMotion_do_mapping = 0 " no default maps
map <leader>s <Plug>(easymotion-sn)
" }}}

" vim-easyoperator-line {{{
let g:EasyOperator_line_do_mapping = 0
nmap <leader>v <Plug>(easyoperator-line-select)
" }}}

" vim-easyoperator-phrase {{{
let g:EasyOperator_phrase_do_mapping = 0
nmap <leader>V <Plug>(easyoperator-phrase-select)
" }}}

" Calendar {{{
let g:calendar_google_calendar = 1
noremap <leader>c :Calendar -view=week <CR>
" }}}

" Better Whitespace {{{
noremap <leader>w :StripWhitespace <CR>
" }}}

" }}}

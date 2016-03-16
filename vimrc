" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set nocompatible
filetype off

" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                " Vundle plugin manager
Plugin 'Valloric/YouCompleteMe'           " Code completion engine for vim
Plugin 'scrooloose/syntastic'             " Syntax checking hacks for vim
Plugin 'bling/vim-airline'                " Vim status bar
Plugin 'vim-airline/vim-airline-themes'   " Airline Themes
Plugin 'tpope/vim-fugitive'               " Vim plugin for git
Plugin 'tpope/vim-surround'               " Plugin for tags
Plugin 'tomasr/molokai'                   " Molokai theme
Plugin 'altercation/vim-colors-solarized' " Solarized theme
Plugin 'kien/ctrlp.vim'                   " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'rking/ag.vim'                     " Vim plugin for the_silver_searcher
Plugin 'scrooloose/nerdcommenter'         " Vim plugin for intensely orgasmic commenting
Plugin 'SirVer/ultisnips'                 " The ultimate snippet solution for Vim.
Plugin 'honza/vim-snippets'               " vim-snipmate default snippets
Plugin 'mattn/webapi-vim'                 " vim interface to Web API
Plugin 'mattn/gist-vim'                   " vimscript for gist
Plugin 'majutsushi/tagbar'                " a class outline viewer for Vim
Plugin 'godlygeek/tabular'                " Vim script for text filtering and alignment
Plugin 'scrooloose/nerdtree'              " A tree explorer plugin for vim
Plugin 'danro/rename.vim'                 " Rename current file
Plugin 'Chiel92/vim-autoformat'           " Provide easy code formatting in Vim
Plugin 'marijnh/tern_for_vim'             " Tern plugin for Vim
Plugin 'jelera/vim-javascript-syntax'     " Enhanced javascript syntax
Plugin 'tpope/vim-rails'                  " Ruby on Rails power tools

call vundle#end()

" Load ftplugins and indent files
filetype plugin on
filetype indent on

" Enable syntax highlighting
filetype off
syntax on

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamedplus

" Background
set background=dark

" Mouse and backspace
set mouse=a
set bs=2

" Rebind <Leader> key
let mapleader = ","

"VIMRC
map <leader>rc :vsplit ~/DotFiles/vimrc<cr>

"Rebind ESC key
inoremap ii <ESC>

" Extend path to find c++ headers and project's include folder
set path+=/usr/include/c++/4.8.2,include/

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

" Run the code
autocmd FileType ruby map <leader>r :!clear && ruby %<cr>
autocmd FileType python map <leader>r :!clear && python %<cr>
autocmd FileType prolog map<leader>r :!clear && sicstus -l %<cr>

"Set fyletype of .tex to latex
let g:tex_flavor='latex'

" Run tests for mochajs
map <leader>tm :!clear && mocha<cr>

" Run tests for nose
map <leader>tn :!clear && nosetests --rednose<cr>

" Better split opening
set splitright
set splitbelow

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

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\(\s\+$\)\|\(^\n$\)/

" Color scheme
"set t_Co=256
" color vividchalk " u need to define the background black :)
" color wombat256mod
"color molokai
colorscheme solarized
hi MatchParen cterm=bold ctermbg=none ctermfg=208 "Little tweak with the matching parents colors
" color railscasts
" color grb256
" color gruvbox
" color codeschool

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

" Smoother scrolling
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

" Run specs with ',t'
function! RunTests(filename)
  " Write the file and run tests for the given filename
  :w
  :silent !clear
  if match(a:filename, '\.feature$') != -1
    exec ":!script/features " . a:filename
  elseif match(a:filename, '_test\.rb$') != -1set nocompatible
filetype off

" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    exec ":!ruby -Itest " . a:filename
  else
    if filereadable("script/test")
      exec ":!script/test " . a:filename
    elseif filereadable("Gemfile")
      exec ":!bundle exec rspec --color " . a:filename
    else
      exec ":!rspec --color " . a:filename
    end
  end
endfunction

function! SetTestFile()
  " Set the spec file that tests will be run for.
  let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif
  " Run the tests for the previously-marked file.
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFile()
  elseif !exists("t:grb_test_file")
    return
  end
  call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
  let spec_line_number = line('.')
  call RunTestFile(":" . spec_line_number . " -b")
endfunction

" run test runner
map <leader>t :call RunTestFile()<cr>
map <leader>T :!clear && rspec spec/<cr>
map <leader>Tn :call RunNearestTest()<cr>

" ctags
noremap <leader>c :!clear && ctags --extra=+f --fields=+l -R .<cr>

                              """""""""""""""""""""""""""""""""""""""""""""""""""
                              "                                                 "
                              "                     Plugins                     "
                              "                                                 "
                              """""""""""""""""""""""""""""""""""""""""""""""""""

"YCM
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='⚠'

let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5

let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_aggregate_errors = 1
let g:syntastic_sort_aggregated_errors = 0
let g:syntastic_id_checkers = 1

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_tex_checkers = ['lacheck']

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

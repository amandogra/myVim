"""""""""" Plugins """"""""""{{{{{{{
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Interpret a file by function and cache file automatically (Required by
" vimsnipMate plugin
Plugin 'MarcWeber/vim-addon-mw-utils'
" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'
" Gruvbox colors scheme
Plugin 'morhetz/gruvbox'
" NERD tree
Plugin 'scrooloose/nerdtree'
" NERD commenter
Plugin 'scrooloose/nerdcommenter'
" airline bar - Lean & mean status/tabline for vim that's light as air.
"Plugin 'bling/vim-airline'
"A light and configurable statusline/tabline for Vim. vim-airline is a nice plugin, but it uses too much functions of other plugins, which should be done by users in .vimrc
"Plugin 'itchyny/lightline.vim'
" Search across files using the silver searcher (Ag) plugin
Plugin 'gabesoft/vim-ags'
" fugitive - git awesomeness in vim
Plugin 'tpope/vim-fugitive'
" an extension of fugitive for gitk - show history map
Plugin 'gregsexton/gitv'
" Powerline fonts
Plugin 'powerline/fonts'
" Tomorrow color theme
Plugin '13k/vim-tomorrow'
"Ctrl P
Plugin 'kien/ctrlp.vim'
"Unite - plugin for searching
"Plugin 'Shougo/unite.vim'
"Surround - it's all about surrounding with parenthesis, brackets and quotes
Plugin 'tpope/vim-surround'
"Fast and quick motion using <Leader>ss
Plugin 'easymotion/vim-easymotion'
"Tabular - align multiple lines based on = or : or any other character or
"space
"Plugin 'godlygeek/tabular'
"Please Vim, stop with these swap file messages. Just switch to the correct window!
Plugin 'gioele/vim-autoswap'
"Git Gutter http://vimawesome.com/plugin/vim-gitgutter - A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed. You can also stage and revert individual hunks.
Plugin 'airblade/vim-gitgutter'
"If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.
Plugin 'tpope/vim-repeat'
"At every search command, it automatically prints> "At match #N out of M matches"
Plugin 'henrik/vim-indexed-search'
"with % key match the HTML etc tags words too
Plugin 'matchit.zip'
"A code-completion engine for vim
Plugin 'Valloric/YouCompleteMe'
"Using tab key for omnicomplete
Plugin 'ervandew/supertab'
"Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
"Plugin for babeljs support
Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'
"pandoc integration
Plugin 'vim-pandoc/vim-pandoc'
"Pandoc syntax
Plugin 'vim-pandoc/vim-pandoc-syntax'
"Vim ES6 syntax support
Plugin 'isRuslan/vim-es6'
" vim json support
Plugin 'elzr/vim-json'
"Danial Conway's highlight next while searching 
"Plugin 'BriceSD/hlnext'
"Dragging of a block. This one was mentioned by Danial Conway in 2013 [https://www.youtube.com/watch?v=aHm36-na4-4]
"Plugin 'fisadev/dragvisuals.vim'
"Vim plugin, insert or delete brackets, parenthesis,  quotes in pair
Plugin 'jiangmiao/auto-pairs'
"HTML5 omnicomplete and syntax
Plugin 'othree/html5.vim'
"Emmet for vim
Plugin 'mattn/emmet-vim'
"Improved Javascript indentaion and syntax support
Plugin 'pangloss/vim-javascript'
"JS Docs plugin to generate JSDoc block comments based on a function signature
Plugin 'heavenshell/vim-jsdoc'
"Plugin for visually displaying indent levels in code
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin for TypeScript
Plugin 'leafgarland/typescript-vim'
"Interactive command execution in vim. Required by tsuquyomi
Plugin 'Shougo/vimproc.vim'
"Plugin for autocompletion of typescript
Plugin 'Quramy/tsuquyomi'
" Plugin for syntax highlighting of JSX
Plugin 'mxw/vim-jsx'
" Plugin for managing a Wordpress blog from vim
Plugin 'danielmiessler/VimBlog'
" CSS colors
Plugin 'ap/vim-css-color'
" Stylus
Plugin 'wavded/vim-stylus'
"Geeknote- Connects to evernote
Plugin 'neilagabriel/vim-geeknote'
"Touch typing tutorial
Plugin 'thanthese/tortoise-typing'
" All of your Plugins must be added before the following line
call vundle#end()            " required


"}}}}}}}

"""""""""" Plugin Related modifications """"""""""{{{{{{{
"diff should be split vertically
set diffopt+=vertical

"related to Tabular plugin as suggested in http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
"if exists(":Tabularize")
    "nmap <Leader>a= :Tabularize /=<CR>
    "vmap <Leader>a= :Tabularize /=<CR>
    "nmap <Leader>a: :Tabularize /:\zs<CR>
    "vmap <Leader>a: :Tabularize /:\zs<CR>
    "nmap <Leader>a=> :Tabularize /=><CR>
    "vmap <Leader>a=> :Tabularize /=><CR>
    "nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    "vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    ""it will call the :Tabularize command each time you insert a | character. This is helpful while creating tables in a readme file.
    "inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

    "function! s:align()
        "let p = '^\s*|\s.*\s|\s*$'
        "if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
            "let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
            "let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
            "Tabularize/|/l1
            "normal! 0
            "call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
        "endif
    "endfunction
"endif

"Fugitive related keymapping
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
nnoremap <Leader>gl :exe ':!cd ' . expand('%:p:h') . '; git las'<CR>
nnoremap <Leader>gh :Silent Glog<CR>
nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

"related to Git Gutter
let g:gitgutter_sign_column_always = 1
"Go to the next git change
nmap <Leader>j <Plug>GitGutterNextHunk
"Go to the previous git change
nmap <Leader>k <Plug>GitGutterPrevHunk
let g:gitgutter_realtime = 1 "So the signs are real time
let g:gitgutter_eager = 1 "To notice change to git index
map <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk

"settings related to solarized color scheme
let g:solarized_termcolors=256
let g:solarized_bold=0
if has('gui_running')
    set background=dark         " Assume a dark background
    "color solarized   "Solarized color scheme
    color Tomorrow-Night-Eighties
else
    set background=dark
    "color default
    colorscheme gruvbox
endif

"set powerline fonts
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h13
if &term == 'xterm' || &term == 'screen'
    set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
endif


"settings related to nerdtree
let NERDTreeChDirMode=0         "Enable the change directory mode
let NERDTreeQuitOnOpen=1        "Close the NERDtree as soon a file is opened

"settings related to ctrlP plugin
let g:ctrlp_custom_ignore = '\v[\/](node_modules|build|target|dist)|(\.(swp|ico|git|svn))$'
"settings related to airline status bar
"let g:airline_theme='tomorrow'
"let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"enable/disable displaying tab number in tabs mode. >
"let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#buffer_idx_mode = 0

"related to lightline (status line)
set laststatus=2
"let g:lightline = {
"\ 'colorscheme': 'solarized',
"\}

"related to fugitive
"set statusline+=%{fugitive#statusline()} " Git Hotness
"To fix the highlighting in the Ag search window
autocmd BufWinEnter {*.agsv} syntax on

"related to indent-guides
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_start_size = 1

"DragVisuals related settings
"vmap  <expr> <LEFT>   DVB_Drag('left')
"vmap  <expr>  <RIGHT>  DVB_Drag('right')
"vmap  <expr>  <DOWN>   DVB_Drag('down')
"vmap  <expr>  <UP>     DVB_Drag('up')
"vmap  <expr>  D        DVB_Duplicate()

"Unite plugin related settings
"Open the list of files in the current directory recursively
"nnoremap <C-p> :Unite file_rec/async<CR>
""List the yank history (registers alternative)
"let g:unite_source_history_yank_enable = 1
"nnoremap <Leader>y :Unite history/yank<CR>
""List the ope buffers
"nnoremap <Leader>l :Unite -quick-match buffer<CR>

" Allow JSX in normal JS files
let g:jsx_ext_required = 0
"Configure the Syntastic to use eslint
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

"support for vim json file format
au BufRead,BufNewFile *.json set filetype=json
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = 'x'
let g:syntastic_style_error_symbol = '!~'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '!~'

hi SignColumn ctermbg=232

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"Geeknote related settings
let g:GeeknoteFormat="markdown"

"}}}}}}}

"""""""""" General settings """""""""" {{{{{{{
"let $VIMRUNTIME = "/Users/amandogra/.vim"
set shell=/bin/bash
set nocompatible "We don't need compatibility with Vi. I like ViMproved :)
"Search related settings
set incsearch "Incremental search, while searching highlight the search results as the keys are pressed
set ignorecase "Search should be case insensitive
set smartcase "While searching, if the pattern includes capital letters then the search will be case sensitive automatically
set hlsearch "Highlight the search results

filetype plugin indent on   " Automatically detect file types.
syntax on
set mouse=a                " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
set virtualedit=onemore     " Allow for cursor beyond last character
"paste                   " Same indentation while pasting
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set history=1000            " Store a ton of history (default is 20)
set spell                           " Spell checking on
set hidden                  " Allow buffer switching without saving
set iskeyword-=.            " '.' is an end of word designator
set iskeyword-=-            " '-' is an end of word designator
set backup                  " Backups are nice ...
scriptencoding utf-8        "Encoding is UTF-8
set wildmenu                    " Show list instead of just completing. this happens when we type a command. Instead of automatically completing the word, we'll see all the options in a list
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too. Which wrap allows specified keys that move the cursor left/right to move to the previous/next line when the cursor is on the first/last character in the line
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set colorcolumn=81

"Use system clipboard as a default register
if has('gui_running')
  set clipboard=unnamed,unnamedplus
else
    set clipboard=unnamed
endif

"Setting the file name in the Title Bar
let &titlestring = expand("%:p")
if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

"Cursor shapes in different modes NOTE: These work with iTerm Only.
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"backup settings. So that the ~ and swp files are not created in the directory
" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

"}}}}}}}

""""""""""" Formatting """"""""""""""{{{{{{{
"Following function assists in cleaning the trailing spaces manually by using Leader_ key mapping
"Function to preserve the state of the cursor
"function! Preserve(command)
  "" Preparation: save last search, and cursor position.
  "let _s=@/
  "let l = line(".")
  "let c = col(".")
  "" Do the business:
  "execute a:command
  "" Clean up: restore previous search history, and cursor position
  "let @/=_s
  "call cursor(l, c)
"endfunction
"noremap <Leader>- :call Preserve("%s/\\s\\+$//e")<CR>

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

endif

set rnu                         "Show relative line numbers
set number                      "Show the current line number
set showmatch                   " Show matching brackets/parenthesis
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set smartindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set backspace=indent,eol,start  " Fix the backspace
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set matchpairs+=<:>             " Match, to be used with %
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
set cursorline                  " Highlight current line
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
set expandtab                   " Tabs are spaces, not tabs

"settings related to complete menu (omnicomplete)
set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" EJS files are highlighted as HTML
au BufNewFile,BufRead *.ejs set filetype=html




"""""""""" Key mapping """"""""""
let mapleader = ',' "remapping the Leader key from \ to ,
imap ;; <Esc>   "remaping the esc key

:nmap j gj
:nmap k gk

"navigate to next/previous buffers
:nmap <C-n> :bnext<CR>
:nmap <C-b> :bprev<CR>

"Move to next window  Ctrl-w-Ctrl-w
map <Leader>w <C-w><C-w>
map <Leader>m <C-w>h
map <Leader>= <C-w>=
map <Leader>> <C-w>>
map <Leader>< <C-w><

" Easier horizontal scrolling
map zl zL
map zh zH

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

"Plugin related key mapping
"Open NERDTree with ,e. This will sync the NERDtree with the current buffer
:nmap <Leader>e :NERDTreeFind<CR>
"Pandoc related keymaps
nnoremap <leader>gq :%!pandoc -f html -t markdown<CR>
vnoremap <leader>gq : !pandoc -f html -t markdown<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind backslash to Ag Silver-searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap \ :Ags<SPACE>

"this one is for the repeat plugin to work
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"When double braces are typed in the insert mode do not do anything else
"inoremap \{{ {{

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>


"}}}}}}}

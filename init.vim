" === PLUGINS ===

" required by vunddle
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim/

" required by vunddle
call vundle#begin('~/.config/nvim/bundle')

" Vim Tmux integration
Plugin 'christoomey/vim-tmux-navigator'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Neo make
Plugin 'benekastah/neomake'
"""""""""Themes, fonts, colors and other visual Plugins"""
" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'
" Gruvbox colors scheme
Plugin 'morhetz/gruvbox'
" Tomorrow color theme
Plugin '13k/vim-tomorrow'
"railcasts theme
Plugin 'Railscasts-Theme-GUIand256color'
"One dark theme (Atom)
Plugin 'joshdick/onedark.vim'
"Iceberg theme (The blue theme)
Plugin 'cocopon/iceberg.vim'
"Happy hacking theme
Plugin 'YorickPeterse/happy_hacking.vim'
"Tender theme
Plugin 'jacoborus/tender.vim'
"Gotham theme
Plugin 'whatyouhide/vim-gotham'
"Mustart theme
Plugin 'sts10/vim-mustard'
"Railcasts Base16
Plugin 'juanolon/mod-base16-railscasts'
"Another base16 railcasts color scheme
Plugin 'chriskempson/base16-vim'
"Hybrid color scheme
Plugin 'w0ng/vim-hybrid'
"Github like light theme
Plugin 'endel/vim-github-colorscheme'
"""""""""StatusLine""""""
" Powerline fonts
Plugin 'powerline/fonts'
"Git Gutter http://vimawesome.com/plugin/vim-gitgutter - A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed. You can also stage and revert individual hunks.
Plugin 'airblade/vim-gitgutter'
""""""""File Navigation Plugins"""
" NERD tree
Plugin 'scrooloose/nerdtree'
"Ctrl P
Plugin 'kien/ctrlp.vim'
"Unite - plugin for searching
"Plugin 'Shougo/unite.vim'
"At every search command, it automatically prints> "At match #N out of M matches"
Plugin 'henrik/vim-indexed-search'
""""""""Search related plugins"""
" Search across files using the silver searcher (Ag) plugin
Plugin 'gabesoft/vim-ags'
"Whenever the file is opened this plugin sets the root to the project root
Plugin 'airblade/vim-rooter'
""""""""Code related Utilities"""
" NERD commenter
Plugin 'scrooloose/nerdcommenter'
" fugitive - git awesomeness in vim
Plugin 'tpope/vim-fugitive'
" an extension of fugitive for gitk - show history map
Plugin 'gregsexton/gitv'
"Surround - it's all about surrounding with parenthesis, brackets and quotes
Plugin 'tpope/vim-surround'
"Fast and quick motion using <Leader>ss
Plugin 'easymotion/vim-easymotion'
"Tabular - align multiple lines based on = or : or any other character or
"space
"Plugin 'godlygeek/tabular'
"with % key match the HTML etc tags words too
Plugin 'matchit.zip'
"If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.
Plugin 'tpope/vim-repeat'
"Vim plugin, insert or delete brackets, parenthesis,  quotes in pair
Plugin 'jiangmiao/auto-pairs'
"Graph your Vim undo tree in style
Plugin 'sjl/gundo.vim'
""""""""""""Autosuggest & Syntax"""
"Tern for vim
Plugin 'marijnh/tern_for_vim'
"Auto generator for tags
Plugin 'ludovicchabant/vim-gutentags'
"An easy way to browse the tags of the current file
Plugin 'majutsushi/tagbar'
"Using tab key for omnicomplete
Plugin 'ervandew/supertab'
"Tags for javascript
Plugin 'mozilla/doctorjs'
"Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
"A super simple, supare minimal, super light-weight tab-completion plugin for Vim
Plugin 'ajh17/vimcompletesme'
"Autocomplete plugin
"Plugin 'Shougo/neocomplete.vim'
" Interpret a file by function and cache file automatically (Required by vimsnipMate plugin
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"UltiSnips - Track the engine for snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'grvcoelho/vim-javascript-snippets'
""""""""""""Javascript specific plugins"""
"Plugin for babeljs support
Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'
"Vim ES6 syntax support
Plugin 'isRuslan/vim-es6'
" vim json support
Plugin 'elzr/vim-json'
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
" Editor Config
Plugin 'editorconfig/editorconfig-vim'
"Enhanced javascript syntax
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'othree/yajs.vim'
"Tern for javascript
"Plugin 'ternjs/tern_for_vim'
Plugin 'maksimr/vim-jsbeautify'
""""""""""""Markdown/HTML/css specific plugins"""
" Plugin for syntax highlighting of JSX
Plugin 'mxw/vim-jsx'
"Markdown html preview
Plugin 'shime/vim-livedown'
"pandoc integration
Plugin 'vim-pandoc/vim-pandoc'
"Pandoc syntax
Plugin 'vim-pandoc/vim-pandoc-syntax'
"HTML5 omnicomplete and syntax
Plugin 'othree/html5.vim'
"Emmet for vim
Plugin 'mattn/emmet-vim'
" CSS colors
Plugin 'ap/vim-css-color'
" Stylus
Plugin 'wavded/vim-stylus'
""""""""""""""""Plugins related to Wordpress"""""""
"PHP autocomplete
Plugin 'shawncplus/phpcomplete.vim'
"php syntax highlight
Plugin 'StanAngeloff/php.vim'
"Plugin to open a URL from vim
Plugin 'tyru/open-browser.vim'
" Plugin for managing a Wordpress blog from vim. Creating/Editing posts. Needs some setup
Plugin 'danielmiessler/VimBlog'
" Plugin for Wordpress development
Plugin 'dsawardekar/wordpress.vim'
"""""""""""""""Plugins I can live without""""""
"Geeknote- Connects to evernote
"Plugin 'neilagabriel/vim-geeknote'
"Touch typing tutorial
Plugin 'thanthese/tortoise-typing'
"Hacker News inside vim
Plugin 'ryanss/vim-hackernews'
"A Language pack for Vim
Plugin 'sheerun/vim-polyglot'
"Please Vim, stop with these swap file messages. Just switch to the correct window!
Plugin 'gioele/vim-autoswap'

" All of your Plugins must be added before the following line
call vundle#end()            " required


"}}}}}}}

"""""""""" Plugin Related modifications """"""""""{{{{{{{
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"Open the help pages in vertical split.
autocmd FileType help wincmd L

"UltiSnips related settings
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/bundle/vim-snippets/snippets"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"diff should be split vertically
set diffopt+=vertical

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
nmap <Leader>hu <Plug>GitGutterUndoHunk

"settings related to solarized color scheme
let g:solarized_termcolors=256
let g:solarized_bold=0
if has('gui_running')
    set background=dark         " Assume a dark background
    color solarized   "Solarized color scheme
    color Tomorrow-Night-Eighties
else
    set background=light
    "color default
    "colorscheme gruvbox
    "colorscheme mustard
    "colorscheme onedark
    "colorscheme iceberg
    "colorscheme solarized
    "color happy_hacking
    "color tender
    "colorscheme gotham
    "colorscheme mod-base16-railscasts
    "colorscheme base16-default-dark
    "colorscheme base16-railscasts
    "colorscheme hybrid
    colorscheme github
    "let g:onedark_termcolors=256
endif
if $TERM_PROGRAM =~ "iTerm"
    set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

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

"related to lightline (status line)
set laststatus=2

"related to fugitive
"set statusline+=%{fugitive#statusline()} " Git Hotness
"To fix the highlighting in the Ag search window
autocmd BufWinEnter {*.agsv} syntax on

"related to indent-guides
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_start_size = 1

"related to editorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
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
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

"support for vim json file format
au BufRead,BufNewFile *.json set filetype=json
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = 'x'
let g:syntastic_style_error_symbol = '!~'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '!~'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"Geeknote related settings
"let g:GeeknoteFormat="markdown"

"settings related to markdown preview https://github.com/JamshedVesuna/vim-markdown-preview
"let vim_markdown_preview_toggle=2
"let vim_markdown_preview_hotkey='<C-m>'
"let vim_markdown_preview_github=1
"let vim_markdown_preview_temp_file=1

"settings related to tern
let g:tern_show_argument_hints='on_hold'

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

"Time after escape key is pressed
set timeoutlen=1000 ttimeoutlen=0

filetype plugin indent on   " Automatically detect file types.
syntax on
set mouse=a                " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
"set ttymouse=xterm2
set virtualedit=onemore     " Allow for cursor beyond last character
"paste                   " Same indentation while pasting
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set history=1000            " Store a ton of history (default is 20)
set nospell                           " Spell checking off
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
if &term == "screen" || &term == "xterm"
    set title
endif

"Cursor shapes in different modes NOTE: These work with iTerm Only.
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

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
    "set statusline+=\ [%{&ff}/%Y]            " Filetype
    "set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    "set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

endif
" set the prefered colours, pick one line here only.
" dark grey, better you can get if you don't support 256 colours
"hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE
" light grey, no 256 colors
"hi CursorLine   cterm=NONE ctermbg=7 ctermfg=NONE
" dark redish
"hi CursorLine   cterm=NONE ctermbg=52 ctermfg=NONE
" dark bluish
"hi CursorLine   cterm=NONE ctermbg=17 ctermfg=NONE
" very light grey
"hi CursorLine   cterm=NONE ctermbg=254 ctermfg=NONE
" yelowish
"hi CursorLine   cterm=NONE ctermbg=229 ctermfg=NONE
" almost black
"hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
"Colors for the search results
"hi Search cterm=NONE ctermfg=white ctermbg=magenta
set termguicolors               "Show the GUI colors on terminal
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
set cursorcolumn                " Highlight the current column
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
set expandtab                   " Tabs are spaces, not tabs

" EJS files are highlighted as HTML
au BufNewFile,BufRead *.ejs,*.vue set filetype=html


""""""""""""""Custom Function"""""""""""""""""
"Sometimes I also like to select a piece of code and want to search it. Here * doesn't work well. So I'm using the following piece which makes selected pieces of characters more easier
" From http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html

" makes * and # work on visual mode too.
function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

" recursively vimgrep for word under cursor or selection if you hit leader-star
nmap <leader>* :execute 'noautocmd vimgrep /\V' . substitute(escape(expand("<cword>"), '\'), '\n', '\\n', 'g') . '/ **'<CR>
vmap <leader>* :<C-u>call <SID>VSetSearch()<CR>:execute 'noautocmd vimgrep /' . @/ . '/ **'<CR>

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


"""""""""" Key mapping """"""""""
let mapleader = ',' "remapping the Leader key from \ to ,
imap ;; <Esc>   "remaping the esc key

:nmap j gj
:nmap k gk

"navigate to next/previous buffers
:nmap <C-n> :bnext<CR>
:nmap <C-b> :bprev<CR>
:nmap <Leader>l :ls<CR>:vsp\|b 

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

"function for better php syntax highlighting
" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"}}}}}}}

if !has('nvim')

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Declare the list of plugins.
" a universal set of defaults that (hopefully) everyone can agree on.
Plugin 'tpope/vim-sensible'
"Please Vim, stop with these swap file messages. Just switch to the correct window!
Plugin 'gioele/vim-autoswap'
"Plugin to surround the braces and brackets
Plugin 'tpope/vim-surround'
"Match the paraenthesis and all more intelligently
Plugin 'tmhedberg/matchit'
" Vim Tmux integration
Plugin 'christoomey/vim-tmux-navigator'
" Searching in vim
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Shades of purple theme
Plugin 'Rigellute/shades-of-purple.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""" Settings """"""""""""""
set rnu                         "Show relative line numbers
set number                      "Show the current line number
"set showmatch                  " Show matching brackets/parenthesis
set nowrap                      " Do not wrap long lines
set smartindent                  " Indent at the same level of the previous line
set shiftwidth=2                " Use indents of 4 spaces
set tabstop=2                   " An indentation every four columns
set softtabstop=2               " Let backspace delete indent
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

set ignorecase                  "Search should be case insensitive
set smartcase                   "While searching, if the pattern includes capital letters then the search will be case sensitive automatically
set hlsearch                    "Highlight the search results

"Time after escape key is pressed
"set timeoutlen=1000 ttimeoutlen=0

filetype plugin indent on       " Automatically detect file types.
syntax on
set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide the mouse cursor while typing
" Set this to the name of your terminal that supports mouse codes.
set virtualedit=onemore         " Allow for cursor beyond last character
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set history=1000                " Store a ton of history (default is 20)
set spell                       " Spell checking on
set hidden                      " Allow buffer switching without saving
set iskeyword-=.                " '.' is an end of word designator
set iskeyword-=-                " '-' is an end of word designator
scriptencoding utf-8            " Encoding is UTF-8
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too. Which wrap allows specified keys that move the cursor left/right to move to the previous/next line when the cursor is on the first/last character in the line
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set colorcolumn=121
set diffopt+=vertical           "diff should be split vertically
" theme related settings
set background=dark
"color default
" colorscheme onehalfdark
" colorscheme gruvbox
colorscheme shades_of_purple

" set t_8b=[48;2;%lu;%lu;%lum
" set t_8f=[38;2;%lu;%lu;%lum

"set powerline fonts
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h13
if &term == 'xterm' || &term == 'screen'
    set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
endif
"Use system clipboard as a default register
if has('gui_running')
  set clipboard=unnamed,unnamedplus
else
    set clipboard=unnamed
endif

"backup settings. So that the ~ and swp files are not created in the directory
" backup to ~/.tmp 
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

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
" set default paths for python
let g:python_host_prog  = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

"support for vim json file format
au BufRead,BufNewFile *.json set filetype=json
" EJS files are highlighted as HTML
au BufNewFile,BufRead *.ejs,*.vue set filetype=html
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 120
" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2
" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'
" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'
" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'
" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'
" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'
" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'
" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'none'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'
" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'
"
" ALE Fix (for eslint error fixes)
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'] }

"ner-commenter settings
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1


"""""""""""" Key mapping """"""""""""""
" My leader is comma (,) not the default (\)
let mapleader = ','
"remapping the Leader key from \ to ,
imap ;; <C-[>
" List all the buffers and be ready to open the entered buffer number in
" vertical split.
:nmap <Leader>l :ls<CR>:vsp\|b 

"open the file navigator if you don't want to use NERDTree
:nmap <Leader>e :Vex<CR> 
"copy the full path of the current file
:nmap cp :let @+ = expand("%:p")<CR>

"Move to next window  Ctrl-w-Ctrl-w
map <Leader>w <C-w><C-w>
"Resize all windows to be of equal width
map <Leader>= <C-w>=
"Resize the current window
map <Leader>> <C-w>>
map <Leader>< <C-w><

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move current line 1up or 1down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Easier horizontal scrolling
map zl zL
map zh zH

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

endif

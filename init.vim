""""""""""" Plugins """""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
" a universal set of defaults that (hopefully) everyone can agree on.
Plug 'tpope/vim-sensible'
"Please Vim, stop with these swap file messages. Just switch to the correct window!
Plug 'gioele/vim-autoswap'
" Vim Tmux integration
Plug 'christoomey/vim-tmux-navigator'
"
" File navigation/search related plugins
" NERD tree
Plug 'scrooloose/nerdtree'
" Use vim's default netrw instead of NERDtree for file navigator
" Plug 'tpope/vim-vinegar'
" Full path fuzzy file, buffer, mru, tag, finder for Vim
Plug 'kien/ctrlp.vim'
"Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" RipGrep to find. Faster than Ag
Plug 'jremmen/vim-ripgrep'
"At every search command, it automatically prints> "At match #N out of M matches"
Plug 'henrik/vim-indexed-search'
"If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.
Plug 'tpope/vim-repeat'
" Plugin to dim the inactive windows
Plug 'blueyed/vim-diminactive'
"Graph your Vim undo tree in style
Plug 'sjl/gundo.vim'
"Whenever the file is opened this plugin sets the root to the project root
Plug 'airblade/vim-rooter'
"
"
" Intellisense related plugins
" Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install({'tag':1})}}
"Surround - it's all about surrounding with parenthesis, brackets and quotes
Plug 'tpope/vim-surround'
"Vim plugin, insert or delete brackets, parenthesis,  quotes in pair
Plug 'jiangmiao/auto-pairs'
" The matchit.vim script allows you to configure % to match more than just
" single characters.  You can match words and even regular expressions.
" Also, matching treats strings and comments (as recognized by the
" syntax highlighting mechanism) intelligently.
Plug 'tmhedberg/matchit'
"Fast and quick motion using <Leader>ss
Plug 'easymotion/vim-easymotion'
" NERD commenter
Plug 'scrooloose/nerdcommenter'
"
" fugitive - git awesomeness in vim
Plug 'tpope/vim-fugitive'
" an extension of fugitive for gitk - show history map
Plug 'gregsexton/gitv'
"Git Gutter http://vimawesome.com/plugin/vim-gitgutter - A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed. You can also stage and revert individual hunks.
Plug 'airblade/vim-gitgutter'
"
"Javascript, CSS and HTML related plugins
"Asynchronous Lint Engine
Plug 'w0rp/ale'
"Plugin for babeljs support
Plug 'jbgutierrez/vim-babel'
Plug 'mattn/webapi-vim'
"Vim ES6 syntax support
Plug 'jiangmiao/auto-pairs'
" Proper indentation for javascript
Plug 'jason0x43/vim-js-indent'
"Emmet for vim
Plug 'mattn/emmet-vim'
"Plugin for TypeScript
Plug 'leafgarland/typescript-vim'
"Plugin to provide more syntax hightlighting and DOM keywords
Plug 'HerringtonDarkholme/yats.vim'
"Interactive command execution in vim. Required by tsuquyomi
Plug 'Shougo/vimproc.vim'
"Plugin for autocompletion of typescript
Plug 'Quramy/tsuquyomi'
" Plugin for syntax highlighting of JSX
Plug 'mxw/vim-jsx'
" Using Prettier to pretify the code
Plug 'prettier/vim-prettier'
" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'
" CSS colors
Plug 'ap/vim-css-color'
"
" Themes and color-schemes
" Color scheme
Plug 'rakr/vim-one'
Plug 'aonemd/kuroi.vim'
" Gruvbox colors scheme (has a terminal theme too)
Plug 'gruvbox-community/gruvbox'
" Shades of purple theme
Plug 'Rigellute/shades-of-purple.vim'
" One Half theme (has a terminal theme too)
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Powerline fonts - for those triangles in the airline
Plug 'powerline/fonts'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""""""""""" Plugin related settings """"""""""""
"settings related to nerdtree
let NERDTreeChDirMode=0         "Enable the change directory mode
let NERDTreeQuitOnOpen=1        "Close the NERDtree as soon a file is opened
"ner-commenter settings
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"settings related to Git Gutter
"let g:gitgutter_sign_column_always = 1
set signcolumn=yes
let g:gitgutter_realtime = 1 "So the signs are real time
let g:gitgutter_eager = 1 "To notice change to git index

"related to indent-guides
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_start_size = 1

" Allow JSX in normal JS files
let g:jsx_ext_required = 0


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
colorscheme gruvbox

set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

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
" :nmap <Leader>e :Sex<CR> 
"copy the full path of the current file
:nmap cp :let @+ = expand("%:p")<CR>

"Move to next window  Ctrl-w-Ctrl-w
map <Leader>w <C-w><C-w>
"Resize all windows to be of equal width
map <Leader>= <C-w>=
"Resize the current window
map <Leader>> <C-w>>
map <Leader>< <C-w><

"tmux related bindings
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <M-Left> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <M-Down> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <M-Up> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <M-Right> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <M-Left> <C-w>h
  map <M-Down> <C-w>j
  map <M-Up> <C-w>k
  map <M-Right> <C-w>l
endif

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move current line 1up or 1down
nnoremap <Leader>mj <plug>m .+1<CR>==
nnoremap <Leader>mk <plug>m .-1<CR>==
inoremap <Leader>mj <Esc>:m .+1<CR>==gi
inoremap <Leader>mk <Esc>:m .-2<CR>==gi
vnoremap <Leader>mj :m '>+1<CR>gv=gv
vnoremap <Leader>mk :m '<-2<CR>gv=gv

" Easier horizontal scrolling
map zl zL
map zh zH

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" When in terminal mode, pressing 'jj' should bring you out of the insert more
tnoremap jj <C-\><C-n>

""""""""""""""""""Plugin related mapping""""""""""""""""""

"Open NERDTree with ,e. This will sync the NERDtree with the current buffer
nmap <Leader>e :NERDTreeFind<CR>
"
"related to FzF
"FuzzyFile search - Search a file name using ,+P command
nnoremap <leader>p :Files<CR>
" nnoremap \ :Rg 
nnoremap \ :Find<SPACE>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"Custom Find command
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* FindAll call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --ignore-case --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
command! -bang -nargs=* FindSmart call fzf#vim#grep('rg --column --line-number --smart-case --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" When in the quick fix window, this will display the selected item and then change focus back to the quick fix window.
nnoremap <expr> p (&buftype is# "quickfix" ? "<CR>\|:copen<CR>" : "p")


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
"
"related to git gutter
"Go to the next git change
nmap <Leader>j <Plug>GitGutterNextHunk
"Go to the previous git change
nmap <Leader>k <Plug>GitGutterPrevHunk
" Add the hunk under cursor to git
map <Leader>ha <Plug>GitGutterStageHunk
" Unstage the changes under cursor
nmap <Leader>hu <Plug>GitGutterUndoHunk

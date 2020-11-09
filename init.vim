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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
" Table view
Plug 'dhruvasagar/vim-table-mode'
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
"Rust related plugins
Plug 'rust-lang/rust.vim'

" Themes and color-schemes
"Color scheme
Plug 'rakr/vim-one'
"Jetbrains dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }
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

"CtrlP related settings
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*

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
set nospell                       " Spell checking on
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
set colorcolumn=121             " At column 121, a colored line would be displayed, to show the max limit
set diffopt+=vertical           "diff should be split vertically

" theme related settings
" set background=dark
"color default
" colorscheme onehalfdark
" colorscheme gruvbox
" colorscheme onehalflight
" colorscheme onehalfdark
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'

" to make the background transparent. This will take the color from the terminal theme
hi Normal guibg=NONE ctermbg=NONE
" background color of the menu
" highlight Pmenu ctermbg=gray guibg=gray

set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

"set powerline fonts
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h13
" set guifont=JetBrains\ Mono:h14
if &term == 'xterm' || &term == 'screen'
    set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
    set guifont=JetBrains\ Mono:h14
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
let g:python_host_prog  = '/usr/local/bin/python3.8'
let g:python3_host_prog = '/usr/local/bin/python3.8'

"support for vim json file format
au BufRead,BufNewFile *.json set filetype=json
" EJS files are highlighted as HTML
au BufNewFile,BufRead *.ejs,*.vue,*.svelte,*.njk set filetype=html
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

"coc.vim related settings
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" The color of the info popup is very hard to read. Following is a fix
hi CocInfoSign  ctermfg=Black guifg=#fab005

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
"
" Enable the spellcheck only on the markdown and github files
autocmd BufRead,BufNewFile *.md set filetype=markdown
" Spell-check Markdown files
autocmd FileType markdown setlocal spell
" Spell-check Git messages
autocmd FileType gitcommit setlocal spell
"
"
"""""""""""" Key mapping """"""""""""""
" My leader is comma (,) not the default (\)
let mapleader = ','
"map double ; to `Esc`
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

  " let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  " let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  " let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

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

" """""""" Color scheme """"""""
" ----------------------------------------------------------------------------
" Vim color file
" Maintainer:   John-Paul Bader <contact@smyck.org>
" Last Change:  2012 April
" License:      Beer Ware
" ----------------------------------------------------------------------------

" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
set linespace=3

" let g:colors_name = "smyck"

hi Normal               cterm=none ctermbg=none     ctermfg=15      gui=none        guibg=#282828   guifg=#F7F7F7
hi LineNr               cterm=none ctermbg=none     ctermfg=8       gui=none        guibg=#282828   guifg=#8F8F8F
hi StatusLine           cterm=none ctermbg=8        ctermfg=15      gui=none        guibg=#5D5D5D   guifg=#FBFBFB
hi StatusLineNC         cterm=none ctermbg=15       ctermfg=8       gui=none        guibg=#5D5D5D   guifg=#FBFBFB
hi Search               cterm=none ctermbg=6        ctermfg=15      gui=none        guibg=#2EB5C1   guifg=#F7F7F7
hi IncSearch            cterm=none ctermbg=3        ctermfg=8       gui=none        guibg=#F6DC69   guifg=#8F8F8F
hi ColumnMargin         cterm=none ctermbg=0                        gui=none        guibg=#000000
hi Error                cterm=none ctermbg=1        ctermfg=15      gui=none                        guifg=#F7F7F7
hi ErrorMsg             cterm=none ctermbg=1        ctermfg=15      gui=none                        guifg=#F7F7F7
hi Folded               cterm=none ctermbg=8        ctermfg=2       gui=none        guibg=#3B3B3B   guifg=#90AB41
hi FoldColumn           cterm=none ctermbg=8        ctermfg=2       gui=none        guibg=#3B3B3B   guifg=#90AB41
hi NonText              cterm=bold ctermbg=none     ctermfg=8       gui=bold                        guifg=#8F8F8F
hi ModeMsg              cterm=bold ctermbg=none     ctermfg=10      gui=none
hi Pmenu                cterm=none ctermbg=8        ctermfg=15      gui=none        guibg=#8F8F8F   guifg=#F7F7F7
hi PmenuSel             cterm=none ctermbg=15       ctermfg=8       gui=none        guibg=#F7F7F7   guifg=#8F8F8F
hi PmenuSbar            cterm=none ctermbg=15       ctermfg=8       gui=none        guibg=#F7F7F7   guifg=#8F8F8F
hi SpellBad             cterm=none ctermbg=1        ctermfg=15      gui=none                        guifg=#F7F7F7
hi SpellCap             cterm=none ctermbg=4        ctermfg=15      gui=none                        guifg=#F7F7F7
hi SpellRare            cterm=none ctermbg=4        ctermfg=15      gui=none                        guifg=#F7F7F7
hi SpellLocal           cterm=none ctermbg=4        ctermfg=15      gui=none                        guifg=#F7F7F7
hi Visual               cterm=none ctermbg=15       ctermfg=8       gui=none        guibg=#F7F7F7   guifg=#8F8F8F
hi Directory            cterm=none ctermbg=none     ctermfg=4       gui=none        guibg=#242424   guifg=#88CCE7
hi SpecialKey           cterm=none ctermbg=none     ctermfg=8       gui=none                        guifg=#8F8F8F
hi DiffAdd              cterm=bold ctermbg=2        ctermfg=15
hi DiffChange           cterm=bold ctermbg=4        ctermfg=15
hi DiffDelete           cterm=bold ctermbg=1        ctermfg=15
hi DiffText             cterm=bold ctermbg=3        ctermfg=8
hi MatchParen           cterm=none ctermbg=6        ctermfg=15      gui=none        guibg=#2EB5C1   guifg=#F7F7F7
hi CursorLine           cterm=none ctermbg=237      ctermfg=none    gui=none        guibg=#424242
hi CursorColumn         cterm=none ctermbg=237      ctermfg=none    gui=none        guibg=#424242
hi Title                cterm=none ctermbg=none     ctermfg=4       gui=none                        guifg=#88CCE7
hi VertSplit            cterm=bold ctermbg=none     ctermfg=8       gui=bold        guibg=#282828   guifg=#8F8F8F
hi SignColumn           cterm=bold ctermbg=none     ctermfg=8       gui=bold        guibg=#282828   guifg=#8F8F8F

" ----------------------------------------------------------------------------
" Syntax Highlighting
" ----------------------------------------------------------------------------
hi Keyword              cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Comment              cterm=none ctermbg=none ctermfg=8           gui=none        guifg=#8F8F8F
hi Delimiter            cterm=none ctermbg=none ctermfg=15          gui=none        guifg=#F7F7F7
hi Identifier           cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi Structure            cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#9DEEF2
hi Ignore               cterm=none ctermbg=none ctermfg=8           gui=none        guifg=bg
hi Constant             cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi PreProc              cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Type                 cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi Statement            cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Special              cterm=none ctermbg=none ctermfg=6           gui=none        guifg=#d7d7d7
hi String               cterm=none ctermbg=none ctermfg=3           gui=none        guifg=#F6DC69
hi Number               cterm=none ctermbg=none ctermfg=3           gui=none        guifg=#F6DC69
hi Underlined           cterm=none ctermbg=none ctermfg=magenta     gui=underline   guibg=#272727
hi Symbol               cterm=none ctermbg=none ctermfg=9           gui=none        guifg=#FAB1AB
hi Method               cterm=none ctermbg=none ctermfg=15          gui=none        guifg=#F7F7F7
hi Interpolation        cterm=none ctermbg=none ctermfg=6           gui=none        guifg=#2EB5C1

" Erlang
hi link erlangAtom            Keyword
hi link erlangBitType         Keyword

hi link rubyBeginend          Keyword
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Method
hi link rubyIdentifier        Keyword
hi link rubyClassVariable     Symbol
hi link rubyInstanceVariable  Constant
hi link rubyGlobalVariable    Constant
hi link rubyClassVariable     Method
hi link rubyConstant          Constant
hi link rubySymbol            Symbol
hi link rubyFunction          Constant
hi link rubyControl           Keyword
hi link rubyConditional       Keyword
hi link rubyInterpolation     Interpolation
hi link rubyInterpolationDelimiter    Interpolation
hi link rubyRailsMethod       Method

" Set the color of the dimmed window to grey
hi ColorColumn ctermbg=237 guibg=#424242

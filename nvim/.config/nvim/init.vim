"----------------------------------------------
" Plugin management
"----------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Dependencies
Plug 'ctrlpvim/ctrlp.vim'                      " CtrlP is installed to support tag finding in vim-go

" General plugins
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " CoC auto completion
Plug 'vim-syntastic/syntastic'                 " Better syntax hax
Plug 'mhinz/vim-signify'                       " Code dif
Plug 'scrooloose/nerdtree'                     " File explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Nerdtree Syntax Highlighting
Plug 'Xuyuanp/nerdtree-git-plugin'             " Show files modified since last commit
Plug 'tpope/vim-fugitive'                      " Git Goodies
Plug 'sheerun/vim-polyglot'                    " Base language support
Plug 'vim-airline/vim-airline'                 " Airline
Plug 'jiangmiao/auto-pairs'                    " Auto-close brackets, etc.
Plug 'tpope/vim-surround'                      " More tag closing, etc.
Plug 'ryanoasis/vim-devicons'                  " Fancy Icons
Plug 'luochen1990/rainbow'                     " Rainbow brackets (cause I'm a sucker for colors)
Plug 'christoomey/vim-tmux-navigator'          " Easy tmux navigation
Plug 'mhinz/vim-startify'                      " Pretty startup page

" Language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' } " Go syntax  highlighting & tooling
Plug 'rust-lang/rust.vim'                      " Rust tooling
Plug 'neovimhaskell/haskell-vim'               " Haskell syntax highlighting 
Plug 'jaspervdj/stylish-haskell'               " Haskell code prettifier
Plug 'alx741/vim-hindent'                      " Haskell indenter

" Color Schemes
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

"----------------------------------------------
" General settings
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set cindent
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set colorcolumn=81                " highlight the 80th column as an indicator
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8                " set utf8 encoding
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set noswapfile                    " disable swapfile usage
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set wrap
set tw=81                         " auto wrap lines that are longer than that
set linebreak                     " avoid wrapping a line in the middle of a word
set emoji                         " enable emojis
set ttyfast                       " fast scrolling
set t_Co=256                      " 256 true color
set ignorecase                    " ignore case when searching
set smartcase                     " when searching try to be smart about cases
set hlsearch                      " highlight search results
set incsearch                     " makes search act like search in modern browsers
set scrolloff=4                   " set scroll offset by # of lines
set nocompatible
set inccommand=split              " enables interactive search and replace
set showcmd
set wildmenu                      " turn on the wild menu
set wildmode=list:longest,full    " set command-line completion mode
set cmdheight=2                   " Set cmdheight 1u higher due to tmux statusline
" set spell spelllang=en_us
" set spellfile=~/.config/nvim/spell/en.utf-8.add

" Set the Python binaries neovim is using. Please note that you will need to
" install the neovim package for these binaries separately like this for
" example:
" python[2|3] -m pip install neovim
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Ruby bin
let g:ruby_host_prog = '~/.rbenv/versions/2.6.3/bin/ruby'

" Allow Vim to set a custom font or color for a word
syntax enable

" Set the leader button
let mapleader = ','

" Ignore compiled files
set wildignore+=.git\*,.hg\*,.svn\*

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Avoid window problem with NERDTree + :bd
nnoremap \d :bp<cr>:bd #<cr>

" Shortcut for GoFmt
map <leader>gf :GoFmt<cr>

" Enable mouse scrolling in normal mode
if has('mouse')
    set mouse=a
endif

" Enable filetype (tabs/spaces/indenting)
filetype on
filetype plugin on
filetype indent on

"----------------------------------------------
" Colors
"----------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark                 " for the dark version
let g:palenight_allow_italics = 1   " italics
colorscheme palenight 

"----------------------------------------------
" Searching
"----------------------------------------------
" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"----------------------------------------------
" Navigation
"----------------------------------------------
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Easier ESC in Insert mode
inoremap ii <esc>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

"----------------------------------------------
" Plugin: Rainbow Brackets
"----------------------------------------------
" Set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1


"----------------------------------------------
" Plugin: vim-airline/vim-airline
"----------------------------------------------
set laststatus=2

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 1

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

" Set Airline Theme
let g:airline_theme='palenight'

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.maxlinenr = ''

" Enable integration with CoC
let g:airline#extensions#coc#enabled = 1

"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).
" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
let g:ctrlp_map = ''

"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
" Hide Press ? for help message
let g:NERDTreeMinimalUI = v:true

nnoremap <C-n> :NERDTreeToggle<cr>

" Syntax Highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$'
\]

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2

" Expand/Collapse
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"----------------------------------------------
" Plugin: coc.nvim
"----------------------------------------------
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" quick formatting mapping
nnoremap <leader> F :call CocAction('format')<CR>

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

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

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

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" show docs on things with K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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

"----------------------------------------------
" Plugin: Syntastic
"----------------------------------------------
let g:syntastic_auto_loc_list=1

"----------------------------------------------
" Language: Rust
"----------------------------------------------
let g:rustfmt_autosave = 1

"----------------------------------------------
" Language: Haskell
"----------------------------------------------
" let g:haskell_indent_if = 3
" let g:haskell_indent_case = 2
" let g:haskell_indent_let = 4
" let g:haskell_indent_where = 6
" let g:haskell_indent_before_where = 2
" let g:haskell_indent_after_bare_where = 2
" let g:haskell_indent_do = 3
" let g:haskell_indent_in = 1
" let g:haskell_indent_guard = 2
" let g:haskell_indent_case_alternative = 1

" Align 'then' two spaces after 'if'
let g:haskell_indent_if = 2
" Indent 'where' block two spaces under previous body
let g:haskell_indent_before_where = 2
" Allow a second case indent style (see haskell-vim README)
let g:haskell_indent_case_alternative = 1
" Only next under 'let' if there's an equals sign
let g:haskell_indent_let_no_in = 0
" Indent cabal
let g:cabal_indent_section = 2

" Disable indenting on save
let g:hindent_on_save = 0

" Helper function, called below with mappings
function! HaskellFormat(which) abort
  if a:which ==# 'hindent' || a:which ==# 'both'
    :Hindent
  endif
  if a:which ==# 'stylish' || a:which ==# 'both'
    silent! exe 'undojoin'
    silent! exe 'keepjumps %!stylish-haskell'
  endif
endfunction

" Key bindings
augroup haskellStylish
  au!
  " Just hindent
  au FileType haskell nnoremap <leader>hi :Hindent<CR>
  " Just stylish-haskell
  au FileType haskell nnoremap <leader>hs :call HaskellFormat('stylish')<CR>
  " First hindent, then stylish-haskell
  au FileType haskell nnoremap <leader>hf :call HaskellFormat('both')<CR>
augroup END

"----------------------------------------------
" Language: Golang
"----------------------------------------------
let g:go_def_mode = "gopls"
let g:go_info_mode = "gopls"

" Enable renaming with gopls
let g:go_rename_command = "gopls"

" Open terminal window on :GoRun, :GoTest, etc
let g:go_term_enabled = 1

" Disable vim-go :GoDef short cut (gd)
" This is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" Mappings
au FileType go nmap <F8> :GoMetaLinter<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F12> <Plug>(go-def)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
" au FileType go nmap <leader>gd <Plug>(go-def) " handled by vim-go
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"

" Enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Show type information
let g:go_auto_type_info = 1

" Highlight variable uses
let g:go_auto_sameids = 1

" Show type info in statusbar
let g:go_auto_type_info = 1

" Fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" Add the failing test name to the output of :GoTest
let g:go_test_show_name = 1

let g:go_gocode_propose_source=1

" gometalinter configuration
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosimple',
    \ 'ineffassign',
    \ 'vet',
    \ 'vetshadow'
\]

" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

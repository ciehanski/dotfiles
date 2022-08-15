"----------------------------------------------
" Plugins: Installation Management
"----------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" General Plugins
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better syntax highlighting and support
Plug 'lukas-reineke/indent-blankline.nvim'     " Elegant line indents for functions, etc
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " CoC auto completion
Plug 'vim-syntastic/syntastic'                 " Better syntax hax
Plug 'airblade/vim-gitgutter'                  " Code dif
Plug 'kyazdani42/nvim-tree.lua'                " File explorer
Plug 'kyazdani42/nvim-web-devicons'            " Fancy icons
Plug 'nvim-lualine/lualine.nvim'               " Statusline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } " Buffers
Plug 'tpope/vim-fugitive'                      " Git goodies
Plug 'windwp/nvim-autopairs'                   " Auto-close brackets, etc
Plug 'tpope/vim-surround'                      " More tag closing, etc.
Plug 'luochen1990/rainbow'                     " Rainbow brackets (cause I'm a sucker for colors)
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " Find files easily
Plug 'nvim-lua/plenary.nvim'                   " Dep for Telescope

" Language Tools
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' } " Go syntax  highlighting & tooling
Plug 'rust-lang/rust.vim'                      " Rust tooling
Plug 'neovimhaskell/haskell-vim'               " Haskell syntax highlighting 
Plug 'jaspervdj/stylish-haskell'               " Haskell code prettifier
Plug 'alx741/vim-hindent'                      " Haskell indenter
Plug 'elixir-editors/vim-elixir'               " Elixir goodies
Plug 'pangloss/vim-javascript'                 " JavaScript goodies

" Color Themes
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

"----------------------------------------------
" Lua Plugins: Installation Management
"----------------------------------------------
lua require('ciehanski.nvim-tree')
lua require('ciehanski.treesitter')
lua require('ciehanski.indent-blankline')
lua require('ciehanski.lualine')
lua require('ciehanski.bufferline')
lua require('ciehanski.autopairs')

"----------------------------------------------
" General Settings
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set cindent
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
" set autowriteall                " write on :quit
set clipboard=unnamedplus
set colorcolumn=81                " highlight the 81st column as an indicator
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8                " set utf8 encoding
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=trail:▫
set noswapfile                    " disable swapfile usage
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set wrap
set tw=81                         " auto wrap lines that are longer than that
set linebreak                     " avoid wrapping a line in the middle of a word
set emoji                         " 😜
set ttyfast                       " fast scrolling
set t_Co=256                      " 256 true color
set ignorecase                    " ignore case when searching
set smartcase                     " when searching try to be smart about cases
set hlsearch                      " highlight search results
set incsearch                     " makes search act like search in modern browsers
set scrolloff=3                   " set scroll offset by # of lines
set nocompatible
set inccommand=split              " enables interactive search and replace
set showcmd
set cmdheight=1                   " Set cmdheight 1u higher due to tmux statusline
set foldmethod=marker             " Fold on marks
set laststatus=2                  " Always display statusline
" set lazyredraw
" set spell spelllang=en_us
" set spellfile=~/.config/nvim/spell/en.utf-8.add

" wildmenu
set wildmenu                         " turn on the wild menu
set wildmode=list:longest            " set command-line completion mode
" wildmenu ignore nasties
set wildignore=.hg\*,.svn\*,Thumbs.db,*.png,*.gif,*.jpg,*.jpeg,vendor,target

" Enable filetype (tabs/spaces/indenting)
filetype on
filetype plugin on
filetype indent on

" Permanent undo
set undodir=~/.config/nvim/.vimdid
set undofile

" Get syntax
syntax enable

" Enable mouse stuff
set mouse=a

" Set the leader button
let mapleader = ','

"----------------------------------------------
" Settings: Binaries
"----------------------------------------------
" Set the Python binaries neovim is using. Please note that you will need to
" install the neovim package for these binaries separately like this for
" example:
" python[2|3] -m pip install neovim
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Ruby bin
let g:ruby_host_prog = '~/.rubies/ruby-3.1.2/bin/ruby'

" Disable perl provider since we don't use perl
let g:loaded_perl_provider = 0

"----------------------------------------------
" Settings: Theme / Colors
"----------------------------------------------
" Support true color in terminal
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
" For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
" Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Theme
set background=dark                 " for the dark version
let g:palenight_allow_italics = 1   " italics
colorscheme palenight 

"----------------------------------------------
" Remaps: Searching
"----------------------------------------------
" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"----------------------------------------------
" Remaps: Navigation
"----------------------------------------------
" Shortcut for nvim-tree
nnoremap <C-n> :NvimTreeToggle<cr>

" Move between buffers with arrow keys
nnoremap <silent><Right> :bn<CR>
nnoremap <silent><Left> :bp<CR>

" Easier insert mode exit
inoremap ii <esc>

" Easier ESC
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

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
" Remaps: Splits
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
" Highlights Yanked Text
"----------------------------------------------
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=300 }
augroup END

"----------------------------------------------
" Plugin: luochen1990/rainbow
"----------------------------------------------
" Set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1
 
"----------------------------------------------
" Plugin: neoclide/coc.nvim
"----------------------------------------------
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

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
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" show docs on things with K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" allow scrolling in help menu with up and
" down arrows without leaving insert mode
function! s:coc_float_scroll(amount) abort
  let float = coc#util#get_float()
  if !float | return '' | endif
  let buf = nvim_win_get_buf(float)
  let buf_height = nvim_buf_line_count(buf)
  let win_height = nvim_win_get_height(float)
  if buf_height < win_height | return '' | endif
  let pos = nvim_win_get_cursor(float)
  try
    let last_amount = nvim_win_get_var(float, 'coc_float_scroll_last_amount')
  catch
    let last_amount = 0
  endtry
  if a:amount > 0
    if pos[0] == 1
      let pos[0] += a:amount + win_height - 2
    elseif last_amount > 0
      let pos[0] += a:amount
    else
      let pos[0] += a:amount + win_height - 3
    endif
    let pos[0] = pos[0] < buf_height ? pos[0] : buf_height
  elseif a:amount < 0
    if pos[0] == buf_height
      let pos[0] += a:amount - win_height + 2
    elseif last_amount < 0
      let pos[0] += a:amount
    else
      let pos[0] += a:amount - win_height + 3
    endif
    let pos[0] = pos[0] > 1 ? pos[0] : 1
  endif
  call nvim_win_set_var(float, 'coc_float_scroll_last_amount', a:amount)
  call nvim_win_set_cursor(float, pos)
  return ''
endfunction

inoremap <silent><expr> <down> coc#float#has_scroll() ? coc#float#scroll(1) : "\<down>"
inoremap <silent><expr> <up> coc#float#has_scroll() ? coc#float#scroll(-1) : "\<up>"
vnoremap <silent><expr> <down> coc#float#has_scroll() ? coc#float#scroll(1) : "\<down>"
vnoremap <silent><expr> <up> coc#float#has_scroll() ? coc#float#scroll(-1) : "\<up>"

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
" Plugin: vim-syntastic/syntastic
"----------------------------------------------
let g:syntastic_auto_loc_list=1

function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 6])
    endif
endfunction

"----------------------------------------------
" Plugin: nvim-telescope/telescope.nvim
"----------------------------------------------
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

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

" Shortcut for GoFmt
map <leader>gf :GoFmt<cr>

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

" Set 4 space tabs go
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" Set 2 spaces HTML
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

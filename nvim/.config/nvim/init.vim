" nvim defaults to `compatible` when selecting a vimrc with the command-line
" `-u` argument. Override this.
if &compatible
  set nocompatible
endif

"----------------------------------------------
" Plugins: Installation Management
"---------------------------------------------- 
call plug#begin('~/.config/nvim/plugged')

" General Plugins
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " Better syntax highlighting and support
Plug 'lukas-reineke/indent-blankline.nvim'     " Elegant line indents for functions, etc
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " CoC auto completion
Plug 'airblade/vim-gitgutter'                  " Code dif
Plug 'kyazdani42/nvim-tree.lua'                " File explorer
Plug 'kyazdani42/nvim-web-devicons'            " Fancy icons
Plug 'nvim-lualine/lualine.nvim'               " Statusline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } " Buffers
Plug 'tpope/vim-fugitive'                      " Git goodies
Plug 'windwp/nvim-autopairs'                   " Auto-close brackets, etc
Plug 'tpope/vim-surround'                      " More tag closing, etc.
Plug 'luochen1990/rainbow'                     " Rainbow brackets (cause I'm a sucker for colors)
Plug 'github/copilot.vim'                      " GitHub Copilot
Plug 'folke/trouble.nvim'                      " Pretty diagnostics
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' } " Fuzzy Finder
Plug 'nvim-lua/plenary.nvim'                   " Required by Telescope

" Language Tools
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go syntax highlighting & tooling
Plug 'rust-lang/rust.vim'                      " Rust tooling
Plug 'neovimhaskell/haskell-vim'               " Haskell syntax highlighting 
Plug 'jaspervdj/stylish-haskell'               " Haskell code prettifier
Plug 'elixir-editors/vim-elixir'               " Elixir goodies

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
lua require('ciehanski.telescope')

"----------------------------------------------
" General Settings
"----------------------------------------------
set laststatus=2                  " always display statusline
set smartindent                   " enable smart indent on new line
set cindent                       " use strict c-style indent
set hidden                        " if hidden is not set, TextEdit might fail
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set clipboard=unnamedplus
set colorcolumn=81                " highlight the 81st column as an indicator
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8                " set utf8 encoding
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=trail:▫             " set trailing space char
set directory=~/.dotfiles/nvim/.config/nvim/swp// " set swap directory
set undodir=~/.dotfiles/nvim/.config/nvim/undo " permanent undo
set undofile                      " permanent undo
set ruler
set relativenumber                " show relative numbers in the ruler
set wrap                          " enforce wrap
set tw=81                         " auto wrap lines that are longer than that
set linebreak                     " avoid wrapping a line in the middle of a word
set ttyfast                       " fast connection indication
set t_Co=256                      " 256 true color
set ignorecase                    " ignore case when searching
set smartcase                     " when searching try to be smart about cases
set hlsearch                      " highlight search results
set incsearch                     " makes search act like search in modern browsers
set inccommand=split              " enables interactive search and replace
set scrolloff=3                   " set scroll offset by # of lines
set showcmd                       " show command output
set cmdheight=1                   " set cmdheight 1u higher due to tmux statusline
set mouse=a                       " enable mouse stuff
set emoji                         " 😜

" Indenting
filetype plugin indent on         " enable c-styling and indents

" wildmenu
set wildmenu                      " turn on the wild menu
set wildmode=full                 " set command-line completion mode
" wildmenu ignore nasties
set wildignore=.hg\*,.svn\*,Thumbs.db,*.png,*.gif,*.jpg,*.jpeg,vendor,target

" Enable syntax highlighting
syntax enable

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
nnoremap <silent><Down> :bd<CR>

" Easier insert mode exit
inoremap ii <esc>

" Easier ESC
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

" Disable arrow keys
noremap <Up> <NOP>
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
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Coc inlay hints coloring
hi CocInlayHint guibg=default guifg=Cyan ctermbg=0 ctermfg=11

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif CocAction('hasProvider', 'hover')
    if coc#float#has_float()
      call coc#float#jump()
      nnoremap <buffer> q <Cmd>close<CR>
    else
      call CocActionAsync('doHover')
    endif
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"----------------------------------------------
" Plugin: folke/trouble.nvim
"----------------------------------------------
nnoremap <silent> <space>d <cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>Trouble loclist<CR>

"----------------------------------------------
" Plugin: github/copilot
"----------------------------------------------
let g:copilot_no_tab_map = v:true
imap <silent><script><expr> <space><tab> copilot#Accept("\<CR>")
inoremap <silent> <space>w <Plug>(copilot-next)
inoremap <silent> <space>q <Plug>(copilot-previous)

"----------------------------------------------
" Plugin: telescope.nvim
"----------------------------------------------
nnoremap <space>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <space>fg <cmd>Telescope live_grep<cr>
nnoremap <space>fb <cmd>Telescope buffers<cr>
nnoremap <space>fh <cmd>Telescope help_tags<cr>

"----------------------------------------------
" Language: Rust
"----------------------------------------------
let g:rustfmt_autosave = 1

"----------------------------------------------
" Language: Haskell
"----------------------------------------------
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
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"

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

" Set 2 spaces HTML
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Set 2 spaces lua
autocmd Filetype lua setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Set 2 spaces css 
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Set 2 spaces scss 
autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Set 4 spaces asm 
autocmd Filetype asm setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

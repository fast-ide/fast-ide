if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.nvim/plugged')

" ----------------------------------------------------------------------------
" Text edit plugins
" ----------------------------------------------------------------------------

  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'tpope/vim-surround'
  Plug 'bkad/CamelCaseMotion'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'terryma/vim-expand-region'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tommcdo/vim-exchange'
  Plug 'matze/vim-move'
  Plug 'tpope/vim-speeddating'
  Plug 'godlygeek/tabular'
  Plug 'svermeulen/vim-cutlass'
  Plug 'junegunn/vim-peekaboo'

" ----------------------------------------------------------------------------
" Marks plugins
" ----------------------------------------------------------------------------

  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'kshenoy/vim-signature'

" ----------------------------------------------------------------------------
" Autocomplete plugins
" ----------------------------------------------------------------------------

  Plug 'jiangmiao/auto-pairs'

" ----------------------------------------------------------------------------
" Languse server protocol plugins
" ----------------------------------------------------------------------------

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----------------------------------------------------------------------------
" Snippets plugins
" ----------------------------------------------------------------------------

  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'honza/vim-snippets'

" ----------------------------------------------------------------------------
" Version plugins
" ----------------------------------------------------------------------------

  Plug 'scrooloose/nerdtree' |
  Plug 'scrooloose/nerdcommenter' |
  Plug 'Xuyuanp/nerdtree-git-plugin'

  Plug 'airblade/vim-gitgutter' |
  Plug 'tpope/vim-fugitive' |
  Plug 'gregsexton/gitv' |
  Plug 'lambdalisue/vim-unified-diff' |
  Plug 'christoomey/vim-conflicted'
  Plug 'will133/vim-dirdiff'

  Plug 'sjl/gundo.vim'

" ----------------------------------------------------------------------------
" Tmux plugins
" ----------------------------------------------------------------------------

  Plug 'christoomey/vim-tmux-navigator'
  Plug 'edkolev/tmuxline.vim'
  Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'wellle/tmux-complete.vim'
  Plug 'benmills/vimux'

" ----------------------------------------------------------------------------
" Search plugins
" ----------------------------------------------------------------------------

  Plug 'easymotion/vim-easymotion'
  Plug 'mileszs/ack.vim'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } |
  Plug 'junegunn/fzf.vim'

  Plug 'haya14busa/incsearch.vim'

" ----------------------------------------------------------------------------
" Autostart plugins
" ----------------------------------------------------------------------------

  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'
  Plug 'farmergreg/vim-lastplace'

" ----------------------------------------------------------------------------
" Highlight plugins
" ----------------------------------------------------------------------------

  Plug 'itchyny/vim-cursorword'
  Plug 'machakann/vim-highlightedyank'
  Plug 't9md/vim-quickhl'
  Plug 'inside/vim-search-pulse'

" ----------------------------------------------------------------------------
" Terminal plugins
" ----------------------------------------------------------------------------

  Plug 'skywind3000/asyncrun.vim'
  Plug 'tpope/vim-dispatch' | Plug 'radenling/vim-dispatch-neovim'
  Plug 'lambdalisue/suda.vim'
  Plug 'tpope/vim-eunuch'

" ----------------------------------------------------------------------------
" Workspace plugins
" ----------------------------------------------------------------------------

  Plug 'dhruvasagar/vim-zoom'
  Plug 'wesQ3/vim-windowswap'
  Plug 'roman/golden-ratio'
  Plug 'chrisbra/NrrwRgn'

" ----------------------------------------------------------------------------
" View plugins
" ----------------------------------------------------------------------------

  Plug 'fidian/hexmode'
  Plug 'hecal3/vim-leader-guide'
  Plug 'junegunn/goyo.vim' | Plug 'amix/vim-zenroom2'
  Plug 'junegunn/limelight.vim'
  Plug 'nathanaelkane/vim-indent-guides'

" ----------------------------------------------------------------------------
" Tags plugins
" ----------------------------------------------------------------------------

  Plug 'lyuts/vim-rtags'
  Plug 'majutsushi/tagbar'
  Plug 'skywind3000/vim-preview'

" ----------------------------------------------------------------------------
" Quickfix plugins
" ----------------------------------------------------------------------------

  Plug 'romainl/vim-qf'

" ----------------------------------------------------------------------------
" External tools plugins
" ----------------------------------------------------------------------------

  Plug 'lambdalisue/vim-gista'
  Plug 'tpope/vim-dadbod'

" ----------------------------------------------------------------------------
" Theme plugins
" ----------------------------------------------------------------------------

  Plug 'altercation/vim-colors-solarized'
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim' |
  Plug 'albertomontesg/lightline-asyncrun'

" ----------------------------------------------------------------------------
" Syntax plugins
" ----------------------------------------------------------------------------

  Plug 'Chiel92/vim-autoformat'
  Plug 'w0rp/ale'
  Plug 'plasticboy/vim-markdown'
  Plug 'ntpeters/vim-better-whitespace'

" ----------------------------------------------------------------------------
" Language specific plugins
" ----------------------------------------------------------------------------

  Plug 'arakashic/chromatica.nvim'
  Plug 'm42e/vim-gcov-marker'
  Plug 'dpelle/vim-LanguageTool'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'huawenyu/neogdb.vim'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'python-mode/python-mode', { 'branch': 'develop' }

  " Plug 'vim-vdebug/vdebug' " slow pluggin

call plug#end()

filetype plugin on

set noswapfile
set nobackup

set encoding=utf-8
set expandtab
set foldmethod=indent
set formatoptions-=t
set gdefault
set hidden
set ignorecase
set iskeyword-=/
set lazyredraw
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nocompatible
set noendofline
set noerrorbells
set nofixendofline
set nofoldenable
set novisualbell
set nowrap
set number
set spelllang=en_gb
set splitbelow
set splitright
set sw=2
set t_vb=
set timeoutlen=1000
set ts=2
set ttimeoutlen=0
set undofile
set viewoptions=folds
set wildmode=longest:full

" ----------------------------------------------------------------------------
" Plug 'mileszs/ack.vim'
" ----------------------------------------------------------------------------

let g:qf_mapping_ack_style = 1
let g:qf_nowrap = 1
let g:ackprg = "ag --vimgrep -s -H
            \ --nocolor --nogroup --column --smart-case --follow
            \ -p $HOME/.ackignore"

" ----------------------------------------------------------------------------
" Plug 'junegunn/fzf.vim'
" ----------------------------------------------------------------------------

let g:vim_search_pulse_mode = 'cursor_line'

" ----------------------------------------------------------------------------
" Plug 'haya14busa/incsearch.vim'
" ----------------------------------------------------------------------------

let g:rtagsUseLocationList = 0

" ----------------------------------------------------------------------------
" Plug 'scrooloose/nerdtree'
" ----------------------------------------------------------------------------

let g:NERDTreeWinPos = "right"
let g:NERDSpaceDelims = 1

" ----------------------------------------------------------------------------
" Plug 't9md/vim-quickhl'
" ----------------------------------------------------------------------------

let g:quickhl_manual_colors = [
    \ "gui=bold ctermfg=16  ctermbg=153 guifg=#ffffff guibg=#0a7383",
    \ "gui=bold ctermfg=16  ctermbg=1   guibg=#a07040 guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=2   guibg=#4070a0 guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=4   guibg=#40a070 guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=5   guibg=#70a040 guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=6   guibg=#d4a00d guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=7   guibg=#06287e guifg=#ffffff",
    \ "gui=bold ctermfg=16  ctermbg=8   guibg=#4c8f2f guifg=#ffffff",
    \ ]

" ----------------------------------------------------------------------------
" Plug 'easymotion/vim-easymotion'
" ----------------------------------------------------------------------------

let g:EasyMotion_smartcase = 1

" ----------------------------------------------------------------------------
" ftplugin/man.vim
" ----------------------------------------------------------------------------

runtime! ftplugin/man.vim

" ----------------------------------------------------------------------------
" Plug 'arakashic/chromatica.nvim'
" ----------------------------------------------------------------------------

let g:chromatica#highlight_feature_level=0

" ----------------------------------------------------------------------------
" Plug 'junegunn/limelight.vim'
" ----------------------------------------------------------------------------

let g:limelight_conceal_ctermfg = 'gray'

" ----------------------------------------------------------------------------
" Plug 'roman/golden-ratio'
" ----------------------------------------------------------------------------

let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_autocommand = 0
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "unite"]

" ----------------------------------------------------------------------------
" Plug 'edkolev/tmuxline.vim'
" ----------------------------------------------------------------------------

let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let g:tmuxline_preset = {
    \'a'    : '#S',
    \'b'    : '#W',
    \'c'    : '#H',
    \'win'  : '#I #W',
    \'cwin' : '#I #W',
    \'x'    : '%a',
    \'y'    : '#W %R',
    \'z'    : '#H'}

" ----------------------------------------------------------------------------
" Plug 'wellle/tmux-complete.vim'
" ----------------------------------------------------------------------------

let g:tmuxcomplete#trigger = 'omnifunc'

" ----------------------------------------------------------------------------
" Plug 'skywind3000/asyncrun.vim'
" ----------------------------------------------------------------------------
"
let g:asyncrun_status = "stopped"

augroup QuickfixStatus
  au! BufWinEnter quickfix setlocal
    \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\
    \ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

" ----------------------------------------------------------------------------
" Plug 'itchyny/lightline.vim'
" ----------------------------------------------------------------------------

let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ 'component_expand': {
    \   'asyncrun_status': 'lightline#asyncrun#status'
    \ },
    \ 'active': {
    \   'left': [ ['mode', 'paste'],
    \             ['readonly', 'filename', 'modified'] ],
    \   'right': [
    \     ['percent', 'lineinfo'],
    \     ['fileencoding'],
    \     ['asyncrun_status']
    \   ],
    \ },
    \ }

" ----------------------------------------------------------------------------
" Plug 'tommcdo/vim-exchange'
" ----------------------------------------------------------------------------

let g:exchange_no_mappings=1

" ----------------------------------------------------------------------------
" Plug 'MattesGroeger/vim-bookmarks'
" ----------------------------------------------------------------------------

let g:bookmark_no_default_key_mappings = 1

" ----------------------------------------------------------------------------
" Plug 'mhinz/vim-startify'
" ----------------------------------------------------------------------------

let g:startify_lists = [
    \ { 'header': ['   MRU'],            'type': 'files' },
    \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
    \ { 'header': ['   Sessions'],       'type': 'sessions' },
    \ ]

" ----------------------------------------------------------------------------
" Plug 'ntpeters/vim-better-whitespace'
" ----------------------------------------------------------------------------

let g:better_whitespace_guicolor='gray'
let g:better_whitespace_ctermcolor='gray'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=0

" ----------------------------------------------------------------------------
" Plug 'Chiel92/vim-autoformat'
" ----------------------------------------------------------------------------

let g:formatdef_cmake_formatter = '"cmake-format - -o -"'
let g:formatters_cmake = ['cmake_formatter']
let g:formatdef_cpp_formatter = '"astyle"'
let g:formatters_cpp = ['cpp_formatter']

" ----------------------------------------------------------------------------
" Plug 'christoomey/vim-conflicted'
" ----------------------------------------------------------------------------

set diffopt+=vertical
function ConflictedVersionWrapper()
  if exists('ConflictedVersion')
    return ConflictedVersion()
  endif
endfunction
set stl+=%{ConflictedVersionWrapper()}

let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'

" ----------------------------------------------------------------------------
" Plug 'airblade/vim-rooter'
" ----------------------------------------------------------------------------

let g:rooter_manual_only = 0

" ----------------------------------------------------------------------------
" Plug 'will133/vim-dirdiff'
" ----------------------------------------------------------------------------

let g:DirDiffAddArgs = "-w"

" ----------------------------------------------------------------------------
" Plug 'm42e/vim-gcov-marker'
" ----------------------------------------------------------------------------

let g:gcov_marker_auto_lopen = 0
let g:gcov_marker_covered    = '✓'
let g:gcov_marker_path = '_coverage'
let g:gcov_marker_uncovered  = 'X'

" ----------------------------------------------------------------------------
" Plug 'python-mode/python-mode'
" ----------------------------------------------------------------------------

let g:pymode_options_colorcolumn = 0

" ----------------------------------------------------------------------------
" Plug 'fatih/vim-go'
" ----------------------------------------------------------------------------

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1

autocmd FileType go hi! GoDebugCurrent
            \ ctermfg=16 ctermbg=12 guifg=Black guibg=DarkBlue

" ----------------------------------------------------------------------------
" Plug 'neoclide/coc.nvim'
" ----------------------------------------------------------------------------

" TODO: need to fix the example of lsp configuration
" source $HOME/.config/nvim/config/lsp.vimrc

" ----------------------------------------------------------------------------
" Plug 'joshdick/onedark.vim'
" ----------------------------------------------------------------------------

let g:onedark_terminal_italics = 1

silent! colorscheme onedark

highlight Comment cterm=italic
highlight Normal guibg=NONE ctermbg=NONE

set notermguicolors
set background=dark

" ----------------------------------------------------------------------------
" Mapping
" ----------------------------------------------------------------------------

let mapleader = "\<Space>"
let maplocalleader = ","

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

inoremap <C-E> <C-X><C-E>
inoremap <C-Y> <C-X><C-Y>
inoremap jk <esc>

nnoremap <C-Down> <C-W>-<C-W>-
nnoremap <C-Left> <C-W><<C-W><
nnoremap <C-Right> <C-W>><C-W>>
nnoremap <C-Up> <C-W>+<C-W>+
nnoremap M D
nnoremap Q @q
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap m d
nnoremap mm dd
nnoremap n nzz
nnoremap n nzz
nnoremap zj <C-d>zz
nnoremap zk <C-u>zz
noremap H ^
noremap L $

xnoremap <  <gv
xnoremap >  >gv
xnoremap m d

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

inoremap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
inoremap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w

nmap <silent> / <Plug>(incsearch-forward)
nmap <silent> g/ <Plug>(incsearch-stay)
nmap <silent> ? <Plug>(incsearch-backward)

nnoremap <silent> s <Plug>(easymotion-overwin-f2)

nnoremap <silent> q/ :History/<CR>
nnoremap <silent> q: :History:<CR>

nnoremap <silent> ; :PreviewTag<CR>
nnoremap <silent> <m-d> :PreviewScroll +1<cr>
nnoremap <silent> <m-u> :PreviewScroll -1<cr>

nnoremap <silent> \ :Ag <C-R><C-W><CR>
nnoremap <silent> cx <Plug>(Exchange)
nnoremap <silent> cxc <Plug>(ExchangeClear)
nnoremap <silent> cxx <Plug>(ExchangeLine)
vnoremap <silent> X <Plug>(Exchange)

nnoremap <silent> <Leader><Tab> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>y "+y
nnoremap <silent> <Leader>yy "+yy
nnoremap <silent> <Leader>P "+P
nnoremap <silent> <Leader>p "+p
nnoremap <silent> <Leader>Y "+yg_
vnoremap <silent> <Leader>p "+p
vnoremap <silent> <Leader>y "+y
vnoremap <silent> <Leader>P "+P
vnoremap <silent> <Leader>Y "+Y
xnoremap <silent> <Leader>p "+p
xnoremap <silent> <Leader>y "+y

nnoremap <silent> <Leader>m <Plug>(quickhl-manual-this)
nnoremap <silent> <Leader>M <Plug>(quickhl-manual-reset)
vnoremap <silent> <Leader>M <Plug>(quickhl-manual-reset)
vnoremap <silent> <Leader>m <Plug>(quickhl-manual-this)
xnoremap <silent> <Leader>M <Plug>(quickhl-manual-reset)
xnoremap <silent> <Leader>m <Plug>(quickhl-manual-this)

nnoremap <silent> <Leader>a :Ag<Space>

nnoremap <silent> <Leader>t: :Tabularize /:\zs<CR>
nnoremap <silent> <Leader>t= :Tabularize /=<CR>
nnoremap <silent> <Leader>t\| :Tabularize /\|<CR>
vnoremap <silent> <Leader>t: :Tabularize /:\zs<CR>
vnoremap <silent> <Leader>t= :Tabularize /=<CR>
vnoremap <silent> <Leader>t\| :Tabularize /\|<CR>

nnoremap <silent> <Leader>bb <Plug>BookmarkToggle
nnoremap <silent> <Leader>ba <Plug>BookmarkShowAll
nnoremap <silent> <Leader>bc <Plug>BookmarkClear
nnoremap <silent> <Leader>bi <Plug>BookmarkAnnotate
nnoremap <silent> <Leader>bn <Plug>BookmarkNext
nnoremap <silent> <Leader>bp <Plug>BookmarkPrev
nnoremap <silent> <Leader>bx <Plug>BookmarkClearAll

nnoremap <silent> <Leader>w :wall<CR>
nnoremap <silent> <Leader>q :qall!<CR>

nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>h :History<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <Leader>z :Filetypes<CR>
nnoremap <silent> <Leader>t :Tags<CR>

nnoremap <silent> <Leader>j <Plug>(easymotion-j)
nnoremap <silent> <Leader>k <Plug>(easymotion-k)

nnoremap <silent> <Leader><Space> :nohlsearch<CR>

nnoremap <silent> <Leader>gV :Gitv! --all<cr>
nnoremap <silent> <Leader>ga :Git add %:p<CR><CR>
nnoremap <silent> <Leader>gb :Git branch<Space>
nnoremap <silent> <Leader>gc :Gcommit -v -q<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gg :Ggrep<Space>
nnoremap <silent> <Leader>gl :Dispatch! git pull<CR>
nnoremap <silent> <Leader>gm :Gmove<Space>
nnoremap <silent> <Leader>gn :GitNextConflict<CR>
nnoremap <silent> <Leader>go :Git checkout<Space>
nnoremap <silent> <Leader>gp :Dispatch! git push<CR>
nnoremap <silent> <Leader>gr :Gread<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gv :Gitv --all<cr>
nnoremap <silent> <Leader>gw :Gwrite<CR><CR>
vnoremap <silent> <Leader>gV :Gitv! --all<cr>

nnoremap <silent> <Leader>ql :lclose<CR>
nnoremap <silent> <Leader>qq :cclose<CR>
nnoremap <silent> <Leader>qp :PreviewClose<CR>
nnoremap <silent> <Leader>qt :tabclose<cr>
nnoremap <silent> <Leader>qw <C-W>q

nnoremap <silent> <Leader>et :tabedit <c-r>=expand("%:p:h")<cr>/
nnoremap <silent> <Leader>ew :vert new <c-r>=expand("%:p:h")<cr>/

nnoremap <silent> <Leader>ct :tabnew<cr>
nnoremap <silent> <Leader>cw :new<cr>

nnoremap <silent> <Leader>nl :lnext<CR>
nnoremap <silent> <Leader>nq :cnext<CR>
nnoremap <silent> <Leader>nt gt

nnoremap <silent> <Leader>pl :lprev<CR>
nnoremap <silent> <Leader>pq :cprev<CR>
nnoremap <silent> <Leader>pt gT

nnoremap <silent> <Leader>ol :lopen<CR>
nnoremap <silent> <Leader>ol :lopen<CR>
nnoremap <silent> <Leader>ov :edit $MYVIMRC<CR>
nnoremap <silent> <Leader>oq :copen<CR>
nnoremap <silent> <Leader>op :PreviewGoto tabe<CR>

nnoremap <silent> <Leader>zw :only<cr>
nnoremap <silent> <Leader>zt :tabonly<cr>

nnoremap <silent> <Leader>vp :PreviewGoto vsplit<CR>
nnoremap <silent> <Leader>vw :vsp %<cr>

nnoremap <silent> <Leader>;g :GoldenRatioToggle<CR>
nnoremap <silent> <Leader>;t :TagbarToggle<CR>
nnoremap <silent> <Leader>;p :setlocal paste!<cr>
nnoremap <silent> <Leader>;l :set list!<CR>

nnoremap <silent> <LocalLeader>c :BCommits<CR>
nnoremap <silent> <LocalLeader>l :BLines<CR>
nnoremap <silent> <LocalLeader>t :BTags<CR>

nnoremap <silent> <Leader>ts :tab split<cr>

nnoremap <silent> <Leader>ri :VimuxInspectRunner<CR>
nnoremap <silent> <Leader>rl :VimuxRunLastCommand<CR>
nnoremap <silent> <Leader>rp :VimuxPromptCommand<CR>
nnoremap <silent> <Leader>rq :VimuxCloseRunner<CR>
nnoremap <silent> <Leader>rx :VimuxInterruptRunner<CR>
nnoremap <silent> <Leader>rz :call VimuxZoomRunner()<CR>

map <silent> b <Plug>CamelCaseMotion_b
map <silent> w <Plug>CamelCaseMotion_w
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge

sunmap b
sunmap e
sunmap ge
sunmap w

nnoremap n nzz
nnoremap N Nzz
nnoremap * *nzz
nnoremap # #nzz

autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>

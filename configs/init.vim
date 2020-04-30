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
  Plug 'rhysd/committia.vim'

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
" Floaterm plugin
" ----------------------------------------------------------------------------

  Plug 'voldikss/vim-floaterm'

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
  Plug 'simeji/winresizer'

" ----------------------------------------------------------------------------
" View plugins
" ----------------------------------------------------------------------------

  Plug 'fidian/hexmode'
  " Plug 'hecal3/vim-leader-guide'
  Plug 'junegunn/goyo.vim' | Plug 'amix/vim-zenroom2'
  Plug 'junegunn/limelight.vim'
  Plug 'nathanaelkane/vim-indent-guides'

" ----------------------------------------------------------------------------
" Tags plugins
" ----------------------------------------------------------------------------

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

  Plug 'sonph/onehalf' , {'rtp': 'vim/'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" ----------------------------------------------------------------------------
" Syntax plugins
" ----------------------------------------------------------------------------

  Plug 'Chiel92/vim-autoformat'
  Plug 'w0rp/ale'
  Plug 'plasticboy/vim-markdown'
  Plug 'ntpeters/vim-better-whitespace'

call plug#end()

filetype plugin on

set noswapfile
set nobackup

set conceallevel=2
set cursorline
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
set sel=old
set scrolloff=100
set spelllang=en_gb
set splitbelow
set splitright
set sw=2
set t_vb=
set ts=2
set undofile
set viewoptions=folds
set wildmode=longest:full,full

let mapleader = "\<Space>"

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
inoremap <C-E> <C-X><C-E>
inoremap <C-Y> <C-X><C-Y>

nmap # #n
nmap * *n

nnoremap vv V
nnoremap V v$
nnoremap \| v$"py:read !<C-r>p<CR>

inoremap jk <esc>
nmap zj <C-d>zz
nmap zk <C-u>zz

nnoremap j gj
nnoremap k gk

nnoremap Q @q
nnoremap Y y$

noremap H ^
noremap L $

noremap q/ :History/<CR>
noremap q: :History:<CR>

nnoremap / /\v
vnoremap / /\v

xnoremap <  <gv
xnoremap >  >gv

nnoremap M D
nnoremap m d
nnoremap mm dd
xnoremap m d

vnoremap . :normal .<CR>

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

vnoremap <Leader>y "+y
nnoremap <Leader>Y "+yg_
nnoremap <Leader>y "+y
nnoremap <Leader>yy "+yy

nnoremap <Leader>yf :let @+ = expand("%:p")<CR>
nnoremap <Leader>yl :let @+ = join([expand('%'),  line(".")], ':')<CR>
nnoremap <Leader>yr :let @+ = expand("%")<CR>

nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
nnoremap <Leader>pp :setlocal paste!<cr>

nnoremap <Leader>ls :set hlsearch!<CR>
nnoremap <Leader>ll :set list!<CR>

nnoremap <Leader>wH <C-W>H
nnoremap <Leader>wJ <C-W>J
nnoremap <Leader>wK <C-W>K
nnoremap <Leader>wL <C-W>L
nnoremap <Leader>wd <C-W>q
nnoremap <Leader>wh <C-W><C-H>
nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>
nnoremap <Leader>wo :only<cr>
nnoremap <Leader>wr <C-W>R
nnoremap <Leader>ws :sp %<cr>
nnoremap <Leader>wt <C-W>T
nnoremap <Leader>wv :vsp %<cr>
nnoremap <leader>we :vert new <c-r>=expand("%:p:h")<cr>/

noremap <Leader>ld :lclose<CR>
noremap <Leader>ln :lnext<CR>
noremap <Leader>lo :lopen<CR>
noremap <Leader>lp :lprev<CR>

noremap <Leader>qd :cclose<CR>
noremap <Leader>qf :cfirst<CR>
noremap <Leader>ql :clast<CR>
noremap <Leader>qn :cnext<CR>
noremap <Leader>qo :copen<CR>
noremap <Leader>qp :cprev<CR>

noremap <Leader>ov :edit $MYVIMRC<CR>
noremap <Leader>sv :source $MYVIMRC<CR>

map <Leader>tc :tabnew<cr>
map <Leader>td :tabclose<cr>
map <Leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <Leader>tm :tabmove<space>
map <Leader>tn gt
map <Leader>to :tabonly<cr>
map <Leader>tp gT
map <Leader>ts :tab split<cr>

" ----------------------------------------------------------------------------
" Plug 'mileszs/ack.vim'
" ----------------------------------------------------------------------------

let g:qf_mapping_ack_style = 1
let g:qf_nowrap = 1

if executable('ag')
    let g:ackprg = "ag --vimgrep -s -H
            \ --nocolor --nogroup --column --smart-case --follow
            \ -p $HOME/.ackignore"
endif

nnoremap \ :Ag <C-R><C-W><CR>
nnoremap <Leader>a :Ag<Space>

" ----------------------------------------------------------------------------
" Plug 'junegunn/fzf.vim'
" ----------------------------------------------------------------------------

noremap <Leader>fb :Buffers<CR>
noremap <Leader>fc :Commits<CR>
noremap <Leader>ff :Files<CR>
noremap <Leader>fg :GFiles<CR>
noremap <Leader>fh :History<CR>
noremap <Leader>fl :Lines<CR>
noremap <Leader>ft :Tags<CR>
noremap <Leader>fs :Filetypes<CR>

noremap <Leader>sc :BCommits<CR>
noremap <Leader>sl :BLines<CR>
noremap <Leader>st :BTags<CR>

" ----------------------------------------------------------------------------
" Plug 'inside/vim-search-pulse'
" ----------------------------------------------------------------------------

let g:vim_search_pulse_mode = 'cursor_line'

" ----------------------------------------------------------------------------
" Plug 'haya14busa/incsearch.vim'
" ----------------------------------------------------------------------------

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------------------------------------------------------------------------
" Plug 'lyuts/vim-rtags'
" ----------------------------------------------------------------------------

let g:rtagsUseLocationList = 0

" ----------------------------------------------------------------------------
" Plug 'scrooloose/nerdtree'
" ----------------------------------------------------------------------------

let g:NERDTreeWinPos = "left"
let g:NERDSpaceDelims = 1

noremap <silent> <Leader><Tab> :NERDTreeToggle<CR>

" ----------------------------------------------------------------------------
" Plug 'majutsushi/tagbar'
" ----------------------------------------------------------------------------

noremap <silent> <Leader>tb :TagbarToggle<CR>

" ----------------------------------------------------------------------------
" Plug 't9md/vim-quickhl'
" ----------------------------------------------------------------------------

nmap <Leader>l <Plug>(quickhl-manual-this)
xmap <Leader>l <Plug>(quickhl-manual-this)

let g:quickhl_manual_colors = [
    \ "ctermfg=16  ctermbg=153 guifg=#ffffff guibg=#0a7383",
    \ "ctermfg=16  ctermbg=1   guibg=#a07040 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=2   guibg=#4070a0 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=4   guibg=#40a070 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=5   guibg=#0070e0 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=6   guibg=#007020 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=7   guibg=#d4a00d guifg=#ffffff",
    \ "ctermfg=16  ctermbg=215 guibg=#06287e guifg=#ffffff",
    \ ]

" ----------------------------------------------------------------------------
" Plug 'easymotion/vim-easymotion'
" ----------------------------------------------------------------------------

nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:EasyMotion_smartcase = 1

" ----------------------------------------------------------------------------
" Plug 'bkad/CamelCaseMotion'
" ----------------------------------------------------------------------------

map <silent>b <Plug>CamelCaseMotion_b
map <silent>e <Plug>CamelCaseMotion_e
map <silent>ge <Plug>CamelCaseMotion_ge
map <silent>w <Plug>CamelCaseMotion_w

sunmap b
sunmap e
sunmap ge
sunmap w

" ----------------------------------------------------------------------------
" ftplugin/man.vim
" ----------------------------------------------------------------------------

runtime! ftplugin/man.vim

nnoremap <silent> <Leader>k :Man<CR>
nnoremap <silent> <Leader>v :vertical Man<CR>
vnoremap <silent> <Leader>k y:Man <C-r>"<CR>
vnoremap <silent> <Leader>v y:vertical Man <C-r>"<CR>

" ----------------------------------------------------------------------------
" Plug 'arakashic/chromatica.nvim'
" ----------------------------------------------------------------------------

let g:chromatica#highlight_feature_level=0

" ----------------------------------------------------------------------------
" Plug 'junegunn/limelight.vim'
" ----------------------------------------------------------------------------

let g:limelight_conceal_ctermfg = 'gray'

" ----------------------------------------------------------------------------
" Plug 'simeji/winresizer'
" ----------------------------------------------------------------------------

let g:winresizer_start_key = '<C-T>'

" ----------------------------------------------------------------------------
" Plug 'roman/golden-ratio'
" ----------------------------------------------------------------------------

let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_autocommand = 0
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "unite"]

noremap <silent> <leader>ww :GoldenRatioToggle<CR>

" ----------------------------------------------------------------------------
" Plug 'skywind3000/vim-preview'
" ----------------------------------------------------------------------------

nnoremap <silent> ; :PreviewTag<CR>

nnoremap <silent> <Leader>pd :PreviewClose<CR>
nnoremap <silent> <Leader>pt :PreviewGoto tabe<CR>
nnoremap <silent> <Leader>ps :PreviewGoto split<CR>
nnoremap <silent> <Leader>pv :PreviewGoto vsplit<CR>

noremap <silent> <m-u> :PreviewScroll -1<cr>
noremap <silent> <m-d> :PreviewScroll +1<cr>

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

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

let g:asyncrun_status = ''

augroup QuickfixStatus
  au! BufWinEnter quickfix setlocal
    \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\
    \ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

" ----------------------------------------------------------------------------
" Plug 'vim-airline/vim-airline'
" ----------------------------------------------------------------------------

let g:airline_theme='onehalfdark'
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

silent! let g:airline_section_warning = airline#section#create_right(['%{g:asyncrun_status}'])

" ----------------------------------------------------------------------------
" Plug 'tommcdo/vim-exchange'
" ----------------------------------------------------------------------------

let g:exchange_no_mappings=1

nmap cx <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)
vmap X <Plug>(Exchange)

" ----------------------------------------------------------------------------
" Plug 'MattesGroeger/vim-bookmarks'
" ----------------------------------------------------------------------------

let g:bookmark_no_default_key_mappings = 1

nmap <Leader>bb <Plug>BookmarkToggle
nmap <Leader>bi <Plug>BookmarkAnnotate
nmap <Leader>bo <Plug>BookmarkShowAll
nmap <Leader>bn <Plug>BookmarkNext
nmap <Leader>bp <Plug>BookmarkPrev
nmap <Leader>bc <Plug>BookmarkClear
nmap <Leader>bx <Plug>BookmarkClearAll

" ----------------------------------------------------------------------------
" Plug 'mhinz/vim-startify'
" ----------------------------------------------------------------------------

let g:startify_lists = [
    \ { 'header': ['   MRU'],            'type': 'files' },
    \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
    \ { 'header': ['   Sessions'],       'type': 'sessions' },
    \ ]

" ----------------------------------------------------------------------------
" Plug 'godlygeek/tabular'
" ----------------------------------------------------------------------------

nmap <silent> <Leader>a= :Tabularize /=<CR>
vmap <silent> <Leader>a= :Tabularize /=<CR>
nmap <silent> <Leader>a\| :Tabularize /\|<CR>
vmap <silent> <Leader>a\| :Tabularize /\|<CR>
nmap <silent> <Leader>a: :Tabularize /:\zs<CR>
vmap <silent> <Leader>a: :Tabularize /:\zs<CR>

" ----------------------------------------------------------------------------
" Plug 'ntpeters/vim-better-whitespace'
" ----------------------------------------------------------------------------

let g:better_whitespace_guicolor='gray'
let g:better_whitespace_ctermcolor='gray'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=0

" ----------------------------------------------------------------------------
" Plug 'tpope/vim-fugitive'
" ----------------------------------------------------------------------------

nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gg :Ggrep<Space>
nnoremap <Leader>gl :Dispatch! git pull<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gp :Dispatch! git push<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>

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

nnoremap gn :GitNextConflict<CR>

" ----------------------------------------------------------------------------
" Plug 'gregsexton/gitv'
" ----------------------------------------------------------------------------

nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>

" ----------------------------------------------------------------------------
" Plug 'airblade/vim-rooter'
" ----------------------------------------------------------------------------

let g:rooter_manual_only = 0

" ----------------------------------------------------------------------------
" Plug 'will133/vim-dirdiff'
" ----------------------------------------------------------------------------

let g:DirDiffAddArgs = "-w"

" ----------------------------------------------------------------------------
" Plug 'rhysd/committia.vim'
" ----------------------------------------------------------------------------

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    endif

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)
endfunction

" ----------------------------------------------------------------------------
" Plug 'benmills/vimux'
" ----------------------------------------------------------------------------

map <Leader>vo :call VimuxOpenRunner()<CR>
map <Leader>vc :call VimuxRunCommand("clear")<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

vmap <Leader>vs"vy :call VimuxSlime()<CR>
nmap " V<Leader>vsj
nmap <Leader>vp vip<Leader>vs<CR>

" ----------------------------------------------------------------------------
" Plug 'Shougo/neosnippet.vim'
" ----------------------------------------------------------------------------

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

imap <expr><TAB>
\ pumvisible() ? "\<C-n>" :
\ neosnippet#expandable_or_jumpable() ?
\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" ----------------------------------------------------------------------------
" Floaterm plugin
" ----------------------------------------------------------------------------

nmap <leader>f :FloatermNew lf<CR>

" ----------------------------------------------------------------------------
" Plug 'neoclide/coc.nvim'
" ----------------------------------------------------------------------------

source $HOME/.config/nvim/lsp.vim

" ----------------------------------------------------------------------------
" Plug 'sonph/onehalf'
" ----------------------------------------------------------------------------

silent! colorscheme onehalfdark

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark

highlight Comment cterm=italic
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalFloat guibg=NONE ctermbg=NONE

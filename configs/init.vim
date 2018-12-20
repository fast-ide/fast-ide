call plug#begin('~/.nvim/plugged')

  Plug 'previm/previm'
  Plug 'tpope/vim-dadbod'
  Plug 'amix/vim-zenroom2'
  Plug 'terryma/vim-expand-region'
  Plug 'itchyny/calendar.vim'
  Plug 'altercation/vim-colors-solarized'
  Plug 'vim-scripts/Wombat'
  Plug 'm42e/vim-gcov-marker'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'gregsexton/gitv'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-speeddating'
  Plug 'fidian/hexmode'
  Plug 'kshenoy/vim-signature'
  Plug 'will133/vim-dirdiff'
  Plug 'wellle/tmux-complete.vim'
  "Plug 'python-mode/python-mode', { 'branch': 'develop' }
  "Plug 'vim-vdebug/vdebug'
  Plug 'junegunn/goyo.vim'
  Plug 'Chiel92/vim-autoformat'
  Plug 'Raimondi/delimitMate'
  Plug 'tommcdo/vim-exchange'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'albertomontesg/lightline-asyncrun'
  Plug 'bkad/CamelCaseMotion'
  Plug 'brookhong/cscope.vim'
  Plug 'derekwyatt/vim-fswitch'
  Plug 'dhruvasagar/vim-zoom'
  Plug 'dpelle/vim-LanguageTool'
  Plug 'easymotion/vim-easymotion'
  Plug 'edkolev/tmuxline.vim'
  Plug 'freitass/todo.txt-vim'
  Plug 'godlygeek/tabular'
  Plug 'haya14busa/incsearch.vim'
  Plug 'hecal3/vim-leader-guide'
  Plug 'honza/vim-snippets'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'inside/vim-search-pulse'
  Plug 'itchyny/lightline.vim'
  "Plug 'jalcine/cmake.vim'
  Plug 'pboettch/vim-cmake-syntax'
  Plug 'joshdick/onedark.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/vader.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'lyuts/vim-rtags'
  Plug 'majutsushi/tagbar'
  Plug 'matze/vim-move'
  Plug 'mh21/errormarker.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'plasticboy/vim-markdown'
  Plug 'rdnetto/YCM-Generator', { 'branch': 'develop'}
  Plug 'roman/golden-ratio'
  Plug 'rykka/riv.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'sjl/gundo.vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'tpope/vim-dispatch' 
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "Plug 'vim-ctrlspace/vim-ctrlspace'
  Plug 'huawenyu/neogdb.vim'
  Plug 'vim-scripts/DoxygenToolkit.vim'
  Plug 'vim-scripts/DrawIt'
  Plug 'vim-scripts/ZoomWin'
  Plug 'w0rp/ale'
  Plug 'mileszs/ack.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'SirVer/ultisnips'
  "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

set splitbelow
set splitright
set encoding=utf-8

let g:neobugger_leader = ';'
let g:gdb_require_enter_after_toggling_breakpoint = 0
noremap <leader>;p :GdbEvalRange<CR>

let g:gcov_marker_covered    = '✓'
let g:gcov_marker_uncovered  = 'X'
let g:gcov_marker_path = '_coverage'
let g:gcov_marker_auto_lopen = 0

let g:previm_open_cmd = 'xdg-open'

let g:DirDiffAddArgs = "-w"

let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "unite"]

let g:tmuxcomplete#trigger = 'omnifunc'

let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"
let g:ackprg = "ag --vimgrep"
noremap <Leader>a :Ack <cword><cr>

let g:ctrlp_working_path_mode = 'c'
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
let g:move_key_modifier = 'C'
let g:vim_search_pulse_mode = 'cursor_line'
nmap <leader>sc <Plug>Pulse

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsEditSplit="vertical"

runtime! ftplugin/man.vim

set expandtab
filetype plugin on
set sw=2
set ts=2
set iskeyword-=_
set iskeyword-=/
set nocompatible
set hidden
let mapleader = "\<Space>"
let vim_markdown_preview_github=1

let g:indent_guides_start_level = 1 
let g:indent_guides_guide_size = 1 

silent! set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
noremap <leader>sl :set list!<CR>

noremap <leader>ln :lnext<CR>
noremap <leader>lp :lprev<CR>
noremap <leader>ld :lclose<CR>

noremap <leader>qn :cnext<CR>
noremap <leader>qp :cprev<CR>
noremap <leader>qf :cfirst<CR>
noremap <leader>ql :clast<CR>
noremap <leader>qd :cclose<CR>

inoremap <F10> <C-O>za
nnoremap <F10> za
onoremap <F10> <C-C>za
vnoremap <F10> zf

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>fl :call ToggleLocationList()<CR>
nnoremap <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
nnoremap <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
nnoremap <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
nnoremap <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
nnoremap <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
nnoremap <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
nnoremap <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

silent! call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

let g:ycm_add_preview_to_completeopt = 1

let g:lmap =  {}

let g:lmap.f = { 'name' : 'File Menu' }
let g:lmap.o = { 'name' : 'Open Stuff' }

  let g:lmap.o.v = ['e $MYVIMRC', 'Open vimrc']
  let g:lmap.o.f = ['Files', 'list files']
  let g:lmap.o.g = ['GFiles', 'list git files']
  let g:lmap.o.s = ['so %', 'Source file']
  let g:lmap.o.c = ['Commits', 'Open comments']
  let g:lmap.o.l = ['lopen', 'Open locationlist']
  let g:lmap.o.q = ['copen', 'Open quickfix']

let g:lmap.h = { 'name' : 'Hide Stuff' }

  let g:lmap.h.q = ['cclose', 'Close quickfix']

let g:lmap.g = { 'name' : 'Git Menu' }

  nnoremap <space>ga :Git add %:p<CR><CR>
  nnoremap <space>gs :Gstatus<CR>
  nnoremap <space>gc :Gcommit -v -q<CR>
  nnoremap <space>gt :Gcommit -v -q %:p<CR>
  nnoremap <space>gd :Gdiff<CR>
  nnoremap <space>ge :Gedit<CR>
  nnoremap <space>gr :Gread<CR>
  nnoremap <space>gw :Gwrite<CR><CR>
  nnoremap <space>gp :Ggrep<Space>
  nnoremap <space>gm :Gmove<Space>
  nnoremap <space>gb :Git branch<Space>
  nnoremap <space>go :Git checkout<Space>
  nnoremap <space>gp :Dispatch! git push<CR>
  nnoremap <space>gl :Dispatch! git pull<CR>

let g:lmap.c = { 'name' : 'Comments' }

  let g:lmap.c.c = ['call feedkeys("\<Plug>NERDCommenterComment")','Comment']
  let g:lmap.c[' '] = ['call feedkeys("\<Plug>NERDCommenterToggle")','Toggle']
  let g:lmap.c.d = ['Dox', 'Add documentation']

let g:lmap.l = { 'name' : 'Limelight' }
  let g:lmap.l.l = ['Limelight', 'light on']
  let g:lmap.l[' '] = ['Limelight!!', 'light toggle']

let g:lmap.t = { 'name' : 'Tree' }

  noremap <silent> <leader><Tab> :NERDTreeToggle<CR>

let g:lmap.b = { 'name' : 'Tagbar' }

  noremap <silent> <leader>b :TagbarToggle<CR>

let g:lmap.m = { 'name' : 'Man' }

  nnoremap <silent> <leader>k :Man<CR>
  vnoremap <silent> <leader>k y:Man <C-r>"<CR>
  nnoremap <silent> <leader>v :vertical Man<CR>
  vnoremap <silent> <leader>v y:vertical Man <C-r>"<CR>

" mh21/errormarker.vim {  
    "set errorformat=%f\ %l\ %m
    set errorformat=
    " clang {
        set errorformat+=%f:%l:%c:\ error:\ %m
        set errorformat+=%f:%l:%c:\ note:\ %m
    " }

    " catch {
        set errorformat+=%f:%l:\ FAILED:\ %m
    " }

    " catch+ctest {
        set errorformat+=%*[0123456789^]:\ %f:%l:\ FAILED:\ %m
    " }
    
    " cmake {
        set errorformat+=\ CMake\ Error\ at\ %f:%l\ %m
    " }
    " msvc {
        set errorformat+=%f(%l):%c:\ error:\ %m 
    " }
" }
"
    let g:cscope_silent = 1

    let g:formatdef_cmake_formatter = '"cmake-format - -o -"'
    let g:formatters_cmake = ['cmake_formatter']
    let g:formatdef_cpp_formatter = '"astyle"'
    let g:formatters_cpp = ['cpp_formatter']

    let g:limelight_conceal_ctermfg = 'gray'

    set background=dark " for the dark version
    silent! colorscheme onedark
    hi Normal guibg=NONE ctermbg=NONE
    let g:onedark_terminal_italics = 1

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

    let g:DoxygenToolkit_commentType = "C++"

    let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component_expand': {
      \   'asyncrun_status': 'lightline#asyncrun#status'
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [
      \     ['percent', 'lineinfo'],
      \     ['fileformat', 'fileencoding', 'filetype'],
      \     ['asyncrun_status']
      \   ],
      \ },
      \ }

    let g:ConqueTerm_ReadUnfocused = 1
    let g:ConqueGdb_Leader = ','

    set number

    nnoremap <leader>cf :let @+=expand("%:h") . '/' . expand("%:t") . ':' . line(".")<CR>

let g:asyncrun_status = "stopped"
augroup QuickfixStatus
	au! BufWinEnter quickfix setlocal
		\ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

nmap <leader>wo <C-W>o
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>
nnoremap <leader>wr <C-W>R
nnoremap <leader>wd <C-W>q
nnoremap <leader>wJ <C-W>J
nnoremap <leader>wK <C-W>K
nnoremap <leader>wL <C-W>L
nnoremap <leader>wH <C-W>H
nmap <C-Right> <C-W>><C-W>>
nmap <C-Left> <C-W><<C-W><
nmap <C-Down> <C-W>-<C-W>-
nmap <C-Up> <C-W>+<C-W>+

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

nmap <silent> <Leader>of :FSHere<cr>
nmap <silent> <Leader>ol :FSRight<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a\| :Tabularize /\|<CR>
  vmap <Leader>a\| :Tabularize /\|<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

nmap <Leader>w <Plug>(easymotion-overwin-w)
xmap <Leader>w <Plug>(easymotion-bd-w)
omap <Leader>w <Plug>(easymotion-bd-w)

let g:ycm_semantic_triggers = {
  \   'cpp': [ 're!.' ],
  \   'c++': [ 're!.' ]
  \ }

nmap <silent> <leader>ss :set spell!<CR>
set spelllang=en_gb

let g:ConqueGdb_SaveHistory = 1

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
imap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
imap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w

set noendofline
set nofixendofline

set backupdir=$HOME/.nvim/backup/
set directory=$HOME/.nvim/swap/

map <leader>m <Plug>ToggleMarkbar

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
match ErrorMsg '\%>80v.\+'

let g:pymode_options_colorcolumn = 0
packadd cfilter

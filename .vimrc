function! s:clang_format()
  let now_line = line(".")
  exec ":%! clang-format"
  exec ":" . now_line
endfunction

if executable('clang-format')
  augroup cpp_clang_format
    autocmd!
    autocmd BufWrite,FileWritePre,FileAppendPre *.[ch]pp call s:clang_format()
  augroup END
endif

syntax on
colorscheme molokai
set t_Co=256
set tabstop=2
set shiftwidth=2
set noswapfile
set number
set title
set autoindent
set expandtab
set ignorecase
set smartcase
set wrapscan
set clipboard+=unnamedplus
map ; :
set scrolloff=3
set hlsearch
set colorcolumn=100
set nowrap
set cursorline

hi MatchParen ctermfg=2* ctermbg=6*

if has('vim_string')
  let &t_SI .= "\e[6 q"
  let &t_EI .= "\e[2 q"
  let &t_SR .= "\e[4 q"
endif

set showmatch
set matchtime=1
set matchpairs& matchpairs+=<:>

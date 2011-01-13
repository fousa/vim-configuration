" Not VI compatible
set nocompatible

" Editor settings
set number
set hidden
set list
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#7A7A90
highlight SpecialKey guifg=#7A7A90

" Use a 2 space soft tab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Highlight search results
set hlsearch

if has("autocmd")
  autocmd bufWritePost .vimrc source $MYVIMRC
endif

let mapleader = ";"

" Lusty file explorer shortcuts
command! B  :LustyBufferExplorer
command! F  :LustyFilesystemExplorer
command! FH :LustyFilesystemExplorerFromHere
command! BG :LustyBufferGrep

" Fuzzy finder shortcuts
nmap <leader>ff :FuzzyFinderTextMate<CR>

" Strip trailing white spaces
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
map <leader>strip :call <SID>StripTrailingWhitespaces()<CR>

" Enable filetype-specific indenting and plugins
filetype plugin indent on 

" Remap the arrow keys so you can't use them
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Window navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

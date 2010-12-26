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
nmap <leader>b :LustyBufferExplorer<CR>
nmap <leader>f :LustyFilesystemExplorer<CR>
nmap <leader>fh :LustyFilesystemExplorerFromHere<CR>
nmap <leader>bg :LustyBufferGrep<CR>

" Fuzzy finder shortcuts
nmap <leader>ff :FuzzyFinderTextMate<CR>

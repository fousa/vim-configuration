" Editor settings
set number
set hidden

if has("autocmd")
  autocmd bufWritePost .vimrc source $MYVIMRC
endif

" Lusty file explorer shortcuts
nmap <leader>b :LustyBufferExplorer<CR>
nmap <leader>f :LustyFilesystemExplorer<CR>
nmap <leader>fh :LustyFilesystemExplorerFromHere<CR>
nmap <leader>bg :LustyBufferGrep<CR>

" Fuzzy finder shortcuts
nmap <leader>ff :FuzzyFinderTextMate<CR>

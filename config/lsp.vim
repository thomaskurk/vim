let lspOpts = #{autoHighlight: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [
    \ #{
    \   name: 'lua-language-server',
    \   filetype: ['lua'],
    \   path: 'lua-language-server',
    \   args: []
    \ }
    \ ]

autocmd User LspSetup call LspAddServer(lspServers)

nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
nnoremap <silent> <C-space> <C-x><C-o>

autocmd Filetype lua setlocal omnifunc=lsp#complete

autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })

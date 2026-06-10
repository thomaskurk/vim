" let s:plugin_dir = expand('~/.config/vim/plugged')
"
"function! s:ensure(repo)
"    let name = split(a:repo, '/')[1]
"    let path = s:plugin_dir . '/' . name
"
"    if !isdirectory(path)
"        if !isdirectory(s:plugin_dir)
"            call mkdir(s:plugin_dir, 'p')
"        endif
"        echo "Installing " . a:repo . "..."
"        execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)
"        if v:shell_error
"            echo "Error installing " . a:repo
"            return
"        endif
"    endif
"
"    execute 'set runtimepath+=' . fnameescape(path)
"endfunction
"
"call s:ensure('ghifarit53/tokyonight-vim')
"call s:ensure('junegunn/fzf')
"call s:ensure('junegunn/fzf.vim')
"call s:ensure('itchyny/lightline.vim')
"call s:ensure('yegappan/lsp')

call plug#begin('~/.config/vim/plugged')
Plug 'ghifarit53/tokyonight-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'yegappan/lsp'
call plug#end()

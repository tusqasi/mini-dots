if has('nvim')
    if exists('g:vscode')

    else
	"Colors
	colorscheme gruvbox
	set tgc
	set background=dark

	augroup ncold
	  "makes bg transperent
	  au!
	  autocmd VimEnter *.* :highlight! Normal guibg=NONE ctermbg=NONE
	augroup END
    endif
endif
if !exists("autocommands_loaded")
	au BufNewFile,BufRead ~/pmg/* :set ts=4 sw=4 expandtab
	au BufNewFile,BufRead Makefile :set noexpandtab ts=4 sw=4
	au BufNewFile,BufRead *.tf :set ts=2 sw=2 expandtab
	au BufNewFile,BufRead *.yml :set ts=2 sw=2 expandtab
	let autocommands_loaded = 1
endif

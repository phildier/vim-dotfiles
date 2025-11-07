let g:vim_ai_roles_config_file = '/home/phil/.vim/openai/roles.ini'
let g:vim_ai_python = '/home/phil/.asdf/shims/python'

nnoremap <leader>a :AI<CR>

let s:initial_complete_prompt =<< trim END
>>> system

You are a general assistant.
Answer shortly, consisely and only what you are asked.
Do not provide any explanantion or comments if not requested.
If you answer in a code, do not wrap it in markdown code block.
END



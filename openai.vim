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

let g:vim_ai_complete = {
\  "provider": "openai",
\  "prompt": "",
\  "options": {
\    "model": "gpt-4o",
\    "endpoint_url": "https://api.openai.com/v1/chat/completions",
\    "max_tokens": 0,
\    "max_completion_tokens": 0,
\    "temperature": 0.1,
\    "request_timeout": 20,
\    "stream": 1,
\    "auth_type": "bearer",
\    "token_file_path": "",
\    "token_load_fn": "",
\    "selection_boundary": "#####",
\    "initial_prompt": s:initial_complete_prompt,
\    "frequency_penalty": "",
\    "logit_bias": "",
\    "logprobs": "",
\    "presence_penalty": "",
\    "reasoning_effort": "",
\    "seed": "",
\    "stop": "",
\    "top_logprobs": "",
\    "top_p": "",
\  },
\  "ui": {
\    "paste_mode": 1,
\  },
\}

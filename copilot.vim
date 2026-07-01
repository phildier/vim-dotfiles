function! GitRepoRoot()
    let l:dir = system('git rev-parse --show-toplevel 2> /dev/null')
    if v:shell_error == 0
        return substitute(l:dir, '\n\+$', '', '')
    endif
    return ''
endfunction

let g:git_root = GitRepoRoot()

if g:git_root != ''
    let g:copilot_workspace_folders = [g:git_root]
endif

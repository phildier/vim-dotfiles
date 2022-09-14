function RemoveAnsiColors ()
    let l = 1
    for line in getline(1,"$")
        call setline(l, substitute(line, '\e\[[0-9]*m', '', "g"))
        let l = l + 1
    endfor
endfunction

rotate(n::Int, str::String) = map(v -> rotate(n, v), str)

function rotate(n::Int, ch::Char)
    isletter(ch) ? (isuppercase(ch) ? 'A' + (ch - 'A' + n) % 26 : 'a' + (ch - 'a' + n) % 26) : ch
end

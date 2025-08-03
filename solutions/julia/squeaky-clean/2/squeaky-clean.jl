function transform(ch)
    if ch ≡ '-'             "_"
    elseif isdigit(ch)      ""
    elseif isspace(ch)      ""
    elseif isuppercase(ch)  "-$(lowercase(ch))"
    elseif ch ∈ 'α':'ω'     "?"
    else                    string(ch)
    end
end

function clean(str)
    join(transform.(collect(str))) 
end

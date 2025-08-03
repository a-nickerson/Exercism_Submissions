function transform(ch)
    if ch ≡ '-'
        return "_"
    elseif isdigit(ch)
        return ""
    elseif isspace(ch)
        return ""
    elseif isletter(ch)
        if isuppercase(ch)
            return "-$(lowercase(ch))"
        elseif 945 ≤ Int(ch) ≤ 969 
            return "?"
        else
            return string(ch)
        end
    else
        return string(ch)
    end
end

function clean(str)
    join(transform.(collect(str))) 
end

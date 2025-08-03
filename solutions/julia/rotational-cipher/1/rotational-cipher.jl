function rotate(n, ch)
    function rollover(x)
        if isletter(x)
            isuppercase(x) ? Char(65 + ((Int(x) - 65 + n) % 26)) : Char(97 + ((Int(x) - 97 + n) % 26))
        else
            return x
        end
    end
    isa(ch, String) ? String(rollover.(collect(ch))) : rollover(ch)
end

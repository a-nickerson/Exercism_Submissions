function bob(stim)
    yelling(s) = !any(islowercase, s) && any(isuppercase, s)
    question(s) = endswith(s, '?') 
    silence(s) = all(isspace, s) 

    if yelling(strip(stim)) && question(strip(stim))
        return "Calm down, I know what I'm doing!"
    elseif yelling(strip(stim))
        return "Whoa, chill out!"
    elseif question(strip(stim))
        return "Sure."
    elseif silence(strip(stim))
        return "Fine. Be that way!"
    else
        return "Whatever."
    end
end

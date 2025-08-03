function bob(stimulus)
    stimulus[end] ≡ '?' && stimulus ≡ uppercase(stimulus) && return "Calm down, I know what I'm doing"
    stimulus[end] ≡ '?' && return "Sure."
    stimulus ≡ uppercase(stimulus) && return "Whoa, chill out!"
    stimulus ≡ "" && return "Fine. Be that way!"
    return "Whatever."
end

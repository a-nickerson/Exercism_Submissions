function message(msg)
    strip(msg[findfirst(':', msg)+1:end])
end

function log_level(msg)
    lowercase(strip(msg[findfirst('[', msg)+1 : findfirst(']', msg) - 1]))
end

function reformat(msg)
    "$(message(msg)) ($(log_level(msg)))"
end

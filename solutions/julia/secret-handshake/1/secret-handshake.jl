function secret_handshake(code)
    msg = ""
    bins = [0b00001, 0b00010, 0b00100, 0b01000]
    if code & 0b10000 >0
        bins = sort(bins, rev=true)
    end
    actions = ["wink", "double blink", "close your eyes", "jump"]
    d = Dict(bins .=> actions)
    for bin in keys(d)
        if bin & code > 0
            msg *= d[bin]*", "
        end
    end
    return msg
end

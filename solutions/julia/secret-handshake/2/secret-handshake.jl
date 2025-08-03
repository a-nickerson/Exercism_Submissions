function secret_handshake(code, acts = ["wink", "double blink", "close your eyes", "jump"])
    msg = [a for (i,a) in enumerate(acts) if [1 2 4 8][i] & code >0]
    code & 16 ≡ 0 ? msg : reverse(msg)
end

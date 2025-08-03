const acts = ["wink", "double blink", "close your eyes", "jump"]

msg_constructor(code) = [a for (i,a) in enumerate(acts) if 2^(i-1) & code > 0]

secret_handshake(code) = code & 16 ≡ 0 ? msg_constructor(code) : reverse(msg_constructor(code))

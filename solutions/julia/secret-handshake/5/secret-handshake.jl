const acts = ["wink", "double blink", "close your eyes", "jump"]

msg_constructor(code, actions) = [a for (i,a) in enumerate(actions) if 2^(i-1) & code > 0]

secret_handshake(code) = code & 16 ≡ 0 ? msg_constructor(code, acts) : reverse!(msg_constructor(code, acts))

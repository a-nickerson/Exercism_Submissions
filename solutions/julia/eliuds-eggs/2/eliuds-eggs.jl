eggcount(n) = n ≡ 0 ? 0 : n & 0b000001 + eggcount(n >>> 1)

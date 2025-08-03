eggcount(n) = n ≡ 0 ? 0 : (n & 0b000001 ≡ 0 ? eggcount(n >>> 1) : 1 + eggcount(n >>> 1))

function collatz_steps(n)
    n ≥ 1 || throw(DomainError(n, "n ≱ 1"))
    n ≡ 1 ? 0 : 1 + collatz_steps(c_step(n))
end

c_step(n) = n % 2 ≡ 0 ? n ÷ 2 : 3n + 1

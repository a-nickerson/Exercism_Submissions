function aliquot_sum(n)
    n > 0 ? sum(i for i ∈ (1 : n ÷ 2) if n % i ≡ 0) : throw(DomainError(n, "n ≱ 1"))
end

isperfect(n::Int)::Bool = n == aliquot_sum(n)
isabundant(n::Int)::Bool = n < aliquot_sum(n)
isdeficient(n::Int)::Bool = n > aliquot_sum(n)

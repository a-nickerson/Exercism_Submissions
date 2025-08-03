function aliquot_sum(n)
    if n == 0
        throw(DomainError(0, "Zero is rejected (not a natural number)"))
    elseif n < 0
        throw(DomainError(n, "Negative integer is rejected (not a natural number)"))
    end
    return sum(i for i in 1:div(n,2) if n % i == 0)
end

function isperfect(n)
    return n == aliquot_sum(n)
end

function isabundant(n)
    return n < aliquot_sum(n)
end

function isdeficient(n)
    return n > aliquot_sum(n)
end

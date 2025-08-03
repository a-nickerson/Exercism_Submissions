function raindrops(n)
    note = pling(n)*plang(n)*plong(n) 
    cmp(note,"") ≡ 0 ? string(n) : note
end

pling(n::Int)::String = n % 3 ≡ 0 ? "Pling" : ""
plang(n::Int)::String = n % 5 ≡ 0 ? "Plang" : ""
plong(n::Int)::String = n % 7 ≡ 0 ? "Plong" : ""

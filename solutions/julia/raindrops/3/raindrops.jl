function raindrops(n::Int)::String
    pling(n) = n % 3 ≡ 0 ? "Pling" : ""
    plang(n) = n % 5 ≡ 0 ? "Plang" : ""
    plong(n) = n % 7 ≡ 0 ? "Plong" : ""
    sound = pling(n)*plang(n)*plong(n) 
    cmp(sound, "") ≡ 0 ? string(n) : sound
end

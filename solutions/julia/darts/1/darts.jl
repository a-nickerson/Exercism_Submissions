function score(x, y)
    r = hypot(x,y)
    r == 0 ? 10 : sum(Int.([10, 5, 1] .≥ r .> [5, 1,0]).*[1; 5; 10])
end

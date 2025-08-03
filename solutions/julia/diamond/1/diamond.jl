function rows(letter)
    n = Int(only(letter) - 64)
    kata = [repeat(' ', n-i)*('A' + i -1)*repeat(' ', i-1) for i ∈ 1:n]
    for i ∈ n-1:-1:1
        push!(kata, kata[i])
    end
    kata = [kata[i]*reverse(kata[i])[2:end] for i in 1:length(kata)]
end

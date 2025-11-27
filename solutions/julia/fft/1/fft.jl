function dft(x)
    length(x) |> (N -> rou(N)'.^(0:N-1)*x)
end

function fft(x)
    fft_helper(x) |> (v -> vcat(v, tcr(v)))
end

# roots of unity function
function rou(N) 
    collect( exp(2im*π*(n-1)/N) for n ∈ 1:N )
end

# trim, conjugate and reverse function
tcr(x) = length(x) |> (N -> x[2:end-((N%2))]) |> conj |> reverse

fft_helper(x) = length(x) |> (N -> rou(N)'.^(0:div(N,2)) * x) 

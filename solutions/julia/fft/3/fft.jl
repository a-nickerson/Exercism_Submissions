dft(x) = length(x) |> (N -> unity_roots(N)'.^(0:N-1) * x)

fft(x) = fft_helper(x) |> (u -> vcat(u, tcr(u)))

unity_roots(N) = collect( exp(2im*π*(n-1)/N) for n ∈ 1:N )

# Trim, Conjugate and Reverse function
tcr(x) = length(x) |> (N -> x[2:end-(N%2)]) |> conj |> reverse

fft_helper(x) = length(x) |> (N -> unity_roots(N)'.^(0:div(N,2)) * x) 

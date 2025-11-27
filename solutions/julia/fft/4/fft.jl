dft(x::Vector{Float64}) = length(x) |> (N -> fmatrix(N-1,N) * x)

fft(x::Vector{Float64}) = length(x) |> (N -> fmatrix(div(N,2),N) * x) |> (u -> vcat(u, tcr(u)))

fmatrix(M::Integer, N::Integer) = collect( exp(2im*π*(n-1)/N) for n ∈ 1:N )'.^(0:M)

# Function to Trim, Conjugate and Reverse
tcr(x::Vector{ComplexF64}) = x[2:end - (length(x)%2) ] |> conj |> reverse

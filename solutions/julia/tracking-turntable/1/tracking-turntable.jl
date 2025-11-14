z(x, y) = Complex(x, y)

euler(r, θ) = r*Complex(cos(θ), sin(θ))

rotate(x, y, θ) = reim(z(x, y) * cis(θ))

rdisplace(x, y, r) = z(x,y) |> (c -> euler(abs(c)+r, angle(c))) |> reim

findsong(x, y, r, θ) = rotate(x,y,θ) |> (c -> rdisplace(c[1], c[2],r))

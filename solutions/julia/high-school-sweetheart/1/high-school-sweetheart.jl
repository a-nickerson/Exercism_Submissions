function cleanupname(name)
    name |> (s -> strip(s, ['-'])) |> (s -> split(s, '-')) |> (s -> join(s, " "))
end

function firstletter(name)
    name |> cleanupname |> first |> string
end

function initial(name)
    name |> firstletter |> uppercase |> (s -> s * ".")
end

function couple(name1, name2)
    [name1; name2] .|> initial |> (s -> join(s, " + ")) |> (s -> "❤  " * s * "  ❤" )
end

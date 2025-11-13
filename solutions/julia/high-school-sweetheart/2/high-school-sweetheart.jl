cleanupname(name) =  strip(replace(name, "-" => " "))

firstletter(name) = name |> cleanupname |> first |> string

initial(name) = name |> firstletter |> uppercase |> (s -> s * ".")

function couple(name1, name2)
    "\u2764 $(initial(name1))  +  $(initial(name2)) \u2764"
end

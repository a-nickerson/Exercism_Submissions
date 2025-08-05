get_vector_of_wagons(args...) = collect(args)

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    first, second, engine, rest... = each_wagons_id
    [engine, missing_wagons..., rest..., first, second]
end

add_missing_stops(route, stops...) = Dict(route..., "stops" => (x -> x[2]).(collect(stops)))

extend_route_information(route; more_route_information...) = merge(route, more_route_information)

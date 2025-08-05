get_vector_of_wagons(args...) = collect(args)

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    first, second, engine, rest... = each_wagons_id
    get_vector_of_wagons(engine, missing_wagons..., rest..., first, second)
end

function add_missing_stops(route, stops...)
    route["stops"] = (x -> x[2]).(collect(stops))
    return route
end

function extend_route_information(route; more_route_information...)

end

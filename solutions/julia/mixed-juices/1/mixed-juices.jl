d = Dict("Pure Strawberry Joy" => 0.5, "Energizer" => 1.5, "Green Garden" => 1.5, "Tropical Island" => 3, "All or Nothing" => 5)

function time_to_mix_juice(juice)
    get(d, juice, 2.5)
end

function wedges_from_lime(size)
    size ≡ "small" ? 6 : size ≡ "medium" ? 8 : 10 
end

function limes_to_cut(needed, limes)
    slices = 0
    cut=0
    while slices < needed && cut < lastindex(limes)
        cut += 1
        slices += wedges_from_lime(limes[cut])
    end
    return cut
end

function order_times(orders)
    return time_to_mix_juice.(orders)    
end

function remaining_orders(time_left, orders)
    if sum(order_times(orders)) < time_left
        return [] 
    else
        i=1
        while sum(order_times(orders[1:i])) < time_left
            i += 1
        end
        return orders[(i+1):end]
    end
end

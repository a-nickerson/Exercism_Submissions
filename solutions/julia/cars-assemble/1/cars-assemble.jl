function success_rate(speed)
    return speed ≤ 0 ? 0 : (speed ≤ 4 ? 1 : (speed ≤ 8 ? 0.9 : (speed == 9 ? 0.8 : 0.77) ))     
end

function production_rate_per_hour(speed)
    return 221*speed*success_rate(speed)
end

function working_items_per_minute(speed)
    return floor(Int64,  production_rate_per_hour(speed)/60)
end

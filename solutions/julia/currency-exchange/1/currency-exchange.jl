function exchange_money(budget, exchange_rate)
    return round(budget/exchange_rate, digits=2)
end

function get_change(budget, exchanging_value)
    return budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    return number_of_bills*denomination
end

function get_number_of_bills(amount, denomination)
    return div(amount, denomination)
end

function get_leftover_of_bills(amount, denomination)
    return amount % denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    new_rate = (1+spread/100)*exchange_rate
    exchanged = exchange_money(budget, new_rate)
    return get_value_of_bills(denomination, get_number_of_bills(exchanged, denomination))
end

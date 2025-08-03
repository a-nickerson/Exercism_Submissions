# Define the `expected_bake_time` constant`
const expected_bake_time = 60

# Define the `preparation_time(layers)` function.
preparation_time(layers) = 2 * layers

# Define the `remaining_time(time_in_oven)` function.
function remaining_time(time_in)
    return expected_bake_time - time_in
end

# Define the `total_working_time(layers, time_in_oven)` function.
function total_working_time(layers, time_in)
    return preparation_time(layers) + time_in
end

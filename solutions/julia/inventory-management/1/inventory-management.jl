function create_inventory(items)
    return add_items(Dict(), items)
end

function add_items(inventory, items)
    for item in items
        if haskey(inventory, item) 
            inventory[item] += 1
        else
            inventory[item] = 1
        end
    end
    return inventory
end

function decrement_items(inventory, items)
    for item in items
        if haskey(inventory, item) 
            if inventory[item] > 0
                inventory[item] -= 1
            end
        end
    end
    return inventory
end

function remove_item(inventory, item)
    delete!(inventory, item)
end

function list_inventory(inventory)
    sort([item => inventory[item] for item in keys(inventory) if inventory[item] > 0])
end

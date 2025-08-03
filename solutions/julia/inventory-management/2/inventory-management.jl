create_inventory(items) = add_items(Dict(), items)

function add_items(inventory, items)
    for item in items
        haskey(inventory, item) ? inventory[item] += 1 : inventory[item] = 1
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

remove_item(inventory, item) = delete!(inventory, item)

list_inventory(inventory) = sort([item => inventory[item] for item in keys(inventory) if inventory[item] > 0])

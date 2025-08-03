function clean_ingredients(dish_name, dish_ingredients)
    (dish_name, Set(dish_ingredients))
end

function check_drinks(drink_name, drink_ingredients)
    issetequal(drink_ingredients ∩ ALCOHOLS, Set()) ? drink_name * " Mocktail" : drink_name * " Cocktail" 
end

function categorize_dish(dish_name, dish_ingredients)
    if dish_ingredients ⊆ VEGAN
        return dish_name * ": VEGAN"
    elseif dish_ingredients ⊆ VEGETARIAN
        return dish_name * ": VEGETARIAN"
    elseif dish_ingredients ⊆ PALEO
        return dish_name * ": PALEO"
    elseif dish_ingredients ⊆ KETO
        return dish_name * ": KETO"
    else
        return dish_name * ": OMNIVORE"
    end
end

function tag_special_ingredients(dish)
    (dish[1], Set(dish[2] ∩ SPECIAL_INGREDIENTS))
end

compile_ingredients(dishes) = reduce(union, dishes)

separate_appetizers(dishes, appetizers) = setdiff(dishes, appetizers)

singleton_ingredients(dishes, intersection) = symdiff(intersection, compile_ingredients(dishes)) 

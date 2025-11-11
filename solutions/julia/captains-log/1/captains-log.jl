using Random

random_planet() = rand(['D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'])    

random_ship_registry_number() = "NCC-$(rand(collect(1000:9999)))" 

random_stardate() = randn() * 75 + 41500.0 # This does not seem ideal; can we still get values within 5 standard deviations?
    
random_stardate_v2() = rand(410000:420000)/10

function pick_starships(ships, needed)
    needed ≡ 1 ? [shuffle!(ships)[1]] : [shuffle!(ships)[1]; pick_starships(ships[2:end], needed - 1)]
end

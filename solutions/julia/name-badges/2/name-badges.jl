print_name_badge(id, name, department) = "$(ismissing(id) ? "" : "[$id] - ")$name - $(isnothing(department) ? "OWNER" : uppercase("$department") )"

salaries_no_id(ids, salaries) = sum(ismissing.(ids) .* salaries) 

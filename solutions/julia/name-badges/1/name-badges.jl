print_name_badge(id, name, department) = "$(isa(id, Missing) ? "" : "[$id] - ")$name - $(isa(department, Nothing) ? "OWNER" : uppercase("$department") )"

salaries_no_id(ids, salaries) = sum(ismissing.(ids) .* salaries) 

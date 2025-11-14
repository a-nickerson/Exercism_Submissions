demote(n) = n isa Float64 ? UInt8(ceil(n)) : n isa Integer ? Int8(n) : throw(MethodError(demote, (n,)))    

preprocess(coll) = coll isa Vector ? reverse(demote.(coll)) : coll isa Set ? demote.(sort(collect(coll), rev = true)) : throw(MethodError(preprocess, (coll,))) 

#const TEST_GRAPHEMES = true

function myreverse(str)
    ret = ""
    v = collect(str)
    for i ∈ 1:length(v)
        ret = ret*v[length(v) - i + 1]
    end
    return ret
end

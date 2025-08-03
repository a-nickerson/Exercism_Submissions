const TEST_GRAPHEMES = true
using Unicode

myreverse(str) = join(collect(graphemes(str))[end:-1:1])

using Statistics

rationalize(successes, trials) = successes .// trials

probabilities(successes, trials) = successes ./ trials

compare(rational_thing, float_thing) = map((x,y) -> float(x) ≡ y || x, rational_thing, float_thing)

checkmean(s, t) = compare(mean(rationalize(s,t)), mean(probabilities(s,t)))

checkprob(s, t) = compare(prod(rationalize(s,t)), prod(probabilities(s,t))) 

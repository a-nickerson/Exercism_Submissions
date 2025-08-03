using Statistics

rationalize(successes, trials) = successes .// trials

probabilities(successes, trials) = successes ./ trials

checkmean(s, t) = map((x,y) -> float(x) ≡ y || x, mean(rationalize(s,t)), mean(probabilities(s,t)))

checkprob(s, t) = map((x,y) -> float(x) ≡ y || x, prod(rationalize(s,t)), prod(probabilities(s,t))) 

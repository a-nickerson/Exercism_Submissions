using Statistics

rationalize(successes, trials) = successes .// trials

probabilities(successes, trials) = successes ./ trials

checkmean(s, t) = mean(rationalize(s,t)) ≡ mean(probabilities(s,t)) || mean(rationalize(s,t))

checkprob(s, t) = prod(rationalize(s,t)) ≡ prod(probabilities(s,t)) || prod(rationalize(s,t))

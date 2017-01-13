function g = sigmoidGradient(z)

g = 1.0 ./ (1.0 + exp(-z)) .* (1 - 1.0 ./ (1.0 + exp(-z)));

end

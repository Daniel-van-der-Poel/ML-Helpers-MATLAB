function weights = randWeights(inputLayer, outputLayer, spread)

if nargin < 3
    spread = 6;
end

epsilon = spread^0.5 / (inputLayer + outputLayer)^0.5;
weights = rand(outputLayer, 1 + inputLayer) * 2 * epsilon - epsilon;

% =========================================================================

end

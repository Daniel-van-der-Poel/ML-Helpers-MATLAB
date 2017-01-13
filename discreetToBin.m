function matrix = discreetToBin(inputVector, dimension)

% By default the maximum value will determine the number of output columns
if nargin < 2
    dimension = max(inputVector);
end

if size(inputVector, 1) == 1
    inputVector = inputVector';
end

matrix = 1:dimension == inputVector;

end

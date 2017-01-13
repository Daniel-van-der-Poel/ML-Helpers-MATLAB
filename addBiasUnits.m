function matrix = addBiasUnits(inputMatrix, dimension)

if nargin < 2
    dimension = 2;
end

if dimension == 1
    matrix = [ones(1, size(inputMatrix, 2)); inputMatrix];
else
    matrix = [ones(size(inputMatrix, 1), 1) inputMatrix];
end

end

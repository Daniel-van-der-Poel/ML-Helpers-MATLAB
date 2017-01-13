function matrix = setZeros(inputMatrix, dimension)

if nargin < 2
    dimension = 2;
end

if dimension == 1
    matrix = [zeros(1, size(inputMatrix, 2)); inputMatrix(2:end, :)];
else
    matrix = [zeros(size(inputMatrix, 1), 1) inputMatrix(:, 2:end)];
end

end

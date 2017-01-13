function matrix = pickRandRows(inputMatrix, n, dim)

if nargin < 2
    n = size(inputMatrix, 1);
    dim = 1;
elseif nargin < 3
    dim = 1;
end

if size(inputMatrix, 1) == 1 || dim == 2
    randIndex = randperm(size(inputMatrix, 2));
    matrix = inputMatrix(:, randIndex(1:n));
else
    randIndex = randperm(size(inputMatrix, 1));
    matrix = inputMatrix(randIndex(1:n), :);
end

end
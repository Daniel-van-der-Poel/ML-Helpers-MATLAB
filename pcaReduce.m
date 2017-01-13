function [XReduce, U, S, V, cumVar] = pcaReduce(X, maxVarLoss, verbose)

if nargin < 2
    maxVarLoss = 0;
    verbose = 0;
elseif nargin < 3
    verbose = 0;
end

[m, n] = size(X);
Sigma = X' * X / m;
[U, S, V] = svd(Sigma);
cumVar = cumsum(diag(S)) / sum(diag(S)); % vector with cumulative variance
[~, K] = max(cumVar >= 1 - maxVarLoss);
UReduce = U(:, 1:K); % n by K matrix
XReduce = X * UReduce; % m by K matrix

if verbose ~= 0
    fprintf('\nSize of input matrix: %d by %d', m, n);
    fprintf('\nMaximum variance loss: %d%%', 100 * maxVarLoss);
    if K < n
        fprintf('\nFeatures reduced from %d to %d', n, K);
        if cumVar(K) == 1
            fprintf('\nVariance retained at 100%%\n\n');
        else
            fprintf('\nVariance reduced to %.3f%% of original (%.3f%% loss)\n\n', 100 * cumVar(K), 100 * (1 - cumVar(K)));
        end
    else
        fprintf('\nFeatures could not reduced given maximum variance loss\n\n');
    end
end

% =========================================================================

end

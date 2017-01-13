function [FScore, precision, recall] = FScore(pred, val)

precision = sum(pred(:) .* val(:)) / sum(pred(:));
recall = sum(pred(:) .* val(:)) / sum(val(:));
FScore = 2 * precision * recall / (precision + recall);

end

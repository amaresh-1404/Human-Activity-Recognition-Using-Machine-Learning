% Confusion matrix values
confMat = confusionmat(y_test, y_pred);

% Precision
precision = diag(confMat) ./ sum(confMat,2);

% Recall
recall = diag(confMat) ./ sum(confMat,1)';

% F1 Score
f1 = 2 * (precision .* recall) ./ (precision + recall);

% Display
disp('Precision:'); disp(precision);
disp('Recall:'); disp(recall);
disp('F1 Score:'); disp(f1);
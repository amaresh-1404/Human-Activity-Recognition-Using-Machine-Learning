
function evaluateModel(model, X_test, y_test)

% Predict with scores
[y_pred, score] = predict(model, X_test);

% Accuracy
accuracy = sum(y_pred == y_test) / length(y_test);
disp(['Accuracy: ', num2str(accuracy * 100), '%']);

% --- Confidence using softmax ---
expScore = exp(score);
confidenceMatrix = expScore ./ sum(expScore, 2);
confidence = max(confidenceMatrix, [], 2);

% Labels
labels = ["Walking", "Upstairs", "Downstairs", "Sitting", "Standing", "Laying"];

% --- RANDOM SAMPLE DISPLAY ---
disp('Random Sample Predictions:');
idx = randperm(length(y_pred), 10);

for i = 1:10
    j = idx(i);
    disp(['Prediction: ', char(labels(y_pred(j))), ...
          ' | Confidence: ', num2str(confidence(j))]);
end

% Confusion matrix
confusionchart(y_test, y_pred);

end

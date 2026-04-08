clear
clc

disp('--- LOADING DATA ---');
[X_train, y_train, X_test, y_test] = loadData();

disp('--- TRAINING MODEL (SVM) ---');
model = trainModel(X_train, y_train);

disp('--- EVALUATING MODEL ---');
evaluateModel(model, X_test, y_test);

disp('--- GETTING PREDICTIONS ---');
[y_pred, score] = predict(model, X_test);

% -------- PRECISION / RECALL / F1 --------
disp('--- PERFORMANCE METRICS ---');
confMat = confusionmat(y_test, y_pred);

% -------- CONFUSION MATRIX VISUALIZATION --------
figure;
confusionchart(y_test, y_pred);
title('Confusion Matrix');

% Save for README
saveas(gcf, 'confusion_matrix.png');

precision = diag(confMat) ./ sum(confMat,2);
recall = diag(confMat) ./ sum(confMat,1)';
f1 = 2 * (precision .* recall) ./ (precision + recall);

disp('Precision:'); disp(precision);
disp('Recall:'); disp(recall);
disp('F1 Score:'); disp(f1);

% -------- MODEL COMPARISON --------
disp('--- MODEL COMPARISON ---');
compareModels(X_train, y_train, X_test, y_test);

% -------- CROSS VALIDATION --------
disp('--- CROSS VALIDATION ---');
cvModel = crossval(fitcecoc(X_train, y_train), 'KFold', 5);
loss = kfoldLoss(cvModel);
cv_accuracy = (1 - loss) * 100;

disp(['Cross-Validation Accuracy: ', num2str(cv_accuracy), '%']);

% -------- FEATURE IMPORTANCE --------
disp('--- FEATURE IMPORTANCE ---');
treeModel = fitctree(X_train, y_train);
importance = predictorImportance(treeModel);

figure;
bar(importance);
title('Feature Importance');
xlabel('Feature Index');
ylabel('Importance');

disp('--- DONE ---');

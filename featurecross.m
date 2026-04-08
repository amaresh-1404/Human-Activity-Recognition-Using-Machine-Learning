% Cross Validation
cvModel = crossval(fitcecoc(X_train, y_train), 'KFold', 5);
loss = kfoldLoss(cvModel);
disp(['Cross-Validation Accuracy: ', num2str((1-loss)*100), '%']);

% Feature Importance
treeModel = fitctree(X_train, y_train);
importance = predictorImportance(treeModel);

figure;
bar(importance);
title('Feature Importance');
xlabel('Feature Index');
ylabel('Importance');
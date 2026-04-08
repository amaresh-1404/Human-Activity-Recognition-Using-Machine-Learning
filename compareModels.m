function compareModels(X_train, y_train, X_test, y_test)

% -------- SVM Model --------
svmModel = fitcecoc(X_train, y_train);
y_pred_svm = predict(svmModel, X_test);
acc_svm = sum(y_pred_svm == y_test) / length(y_test);

% -------- KNN Model --------
knnModel = fitcknn(X_train, y_train);
y_pred_knn = predict(knnModel, X_test);
acc_knn = sum(y_pred_knn == y_test) / length(y_test);

% -------- Decision Tree --------
treeModel = fitctree(X_train, y_train);
y_pred_tree = predict(treeModel, X_test);
acc_tree = sum(y_pred_tree == y_test) / length(y_test);

% -------- Naive Bayes --------
nbModel = fitcnb(X_train, y_train);
y_pred_nb = predict(nbModel, X_test);
acc_nb = sum(y_pred_nb == y_test) / length(y_test);

% -------- Display Results --------
disp(['SVM Accuracy: ', num2str(acc_svm * 100), '%']);
disp(['KNN Accuracy: ', num2str(acc_knn * 100), '%']);
disp(['Decision Tree Accuracy: ', num2str(acc_tree * 100), '%']);
disp(['Naive Bayes Accuracy: ', num2str(acc_nb * 100), '%']);

% -------- Plot Comparison --------
figure;
bar([acc_svm, acc_knn, acc_tree, acc_nb]);
set(gca, 'XTickLabel', {'SVM', 'KNN', 'Tree', 'NaiveBayes'});
ylabel('Accuracy');
title('Model Comparison');
ylim([0 1]);

end
function model = trainModel(X_train, y_train)

% Train SVM with posterior probability estimation
model = fitcecoc(X_train, y_train, 'FitPosterior', true);

end
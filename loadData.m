function [X_train, y_train, X_test, y_test] = loadData()

X_train = load('UCI HAR Dataset/train/X_train.txt');
y_train = load('UCI HAR Dataset/train/y_train.txt');

X_test = load('UCI HAR Dataset/test/X_test.txt');
y_test = load('UCI HAR Dataset/test/y_test.txt');

end
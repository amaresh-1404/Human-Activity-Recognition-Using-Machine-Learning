# Human Activity Recognition Using Machine Learning

## Project Description
The aim of this project is to build a machine learning system that can automatically recognize human activities using smartphone sensor data. The dataset consists of signals collected from accelerometer and gyroscope sensors, and the model is trained to classify activities such as walking, sitting, standing, upstairs, downstairs, and laying.

The project is implemented in MATLAB and follows a complete pipeline including data loading, model training, evaluation, and analysis. Additional steps such as model comparison, cross-validation, and feature importance are included to improve performance and understanding of the model.

## Setup Instructions
- Install MATLAB (R2020 or later recommended)
- Ensure Machine Learning Toolbox is available
- Keep all .m files in the same folder
- Download the dataset and update the path inside loadData.m


## Steps to Run the Project
1. Open MATLAB  
2. Navigate to the project folder  
3. Run the following command:

   main

4. The program will:
   - Load the dataset  
   - Train the model  
   - Perform predictions  
   - Evaluate performance  
   - Display results  

   ## File Structure
   
- main.m → Entry point of the project (runs full pipeline)
- loadData.m → Loads training and testing dataset
- trainModel.m → Trains the machine learning model
- evaluateModel.m → Evaluates model performance
- compareModels.m → Compares different ML models
- featurecross.m → Performs feature importance and cross-validation
- precisin.m → Calculates precision, recall, and F1 score

## Results

- Overall Accuracy: ~96%
- Cross-validation Accuracy: ~98%
- High Precision, Recall, and F1-score across all classes
- Confusion matrix shows strong classification performance

### Confusion Matrix
![Confusion Matrix](confusion_matrix.png)

### Feature Importance
![Feature Importance](feature%20importance.png)

### Model Comparison
![Model Comparison](modelcomparison.png)

## Input Data
The project uses a Human Activity Recognition dataset based on smartphone sensor signals.

The dataset is not included in this repository due to size constraints. It should be downloaded separately and placed in the appropriate directory as specified in the code (loadData.m).


## Models Used
- Support Vector Machine (SVM) – main model  
- K-Nearest Neighbors (KNN)  
- Decision Tree  
- Naive Bayes  

Model comparison is performed based on accuracy.

## Feature Importance
Feature importance analysis is performed to identify the most significant features contributing to activity classification. This helps in understanding the importance of different sensor inputs.

## Cross-Validation
Cross-validation is used to evaluate the reliability of the model. The dataset is divided into multiple folds, and the model is trained and tested on different splits to ensure consistent performance. The average accuracy achieved is around 98%.

## Tools and Dependencies
- MATLAB  
- Machine Learning Toolbox  

## Testing and Verification
- Confusion matrix visualization  
- Accuracy and performance metrics  
- Precision, recall, and F1 score  
- Cross-validation results confirm model stability  

## Notes
- The project is designed for one-click execution using main
- Code is structured and easy to understand
- Inline comments are included for clarity  

## Contact
Amaresh H  
RV College of Engineering, Bangalore

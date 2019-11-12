# Math Score Prediction using Linear Regression
This model coded on MATLAB uses Linear Regression to predict the math scores of students of a particular school.
The dataset I used can be found on https://www.kaggle.com/spscientist/students-performance-in-exams

## Running the program
To be able to run the program, please download MATLAB or Octave.
All the files should be in the current directory.
Then open the livescript LinearRegression.mlx.
The user just has to run it section by section after importing the CSV file, StudentsPerformance.csv, as a table. 

## Details
The features I used are:
  * Gender
  * Ethnic Group
  * Parents' highest level of education
  * Lunch type
  * Test preparation course
  
The assumptions I made when building this model are as follows
  * The parents' level of education has an impact on the upbringing of the student.
  * The lunch type of the student somehow reflects the family's financial situation. For instance, if a student is on a free/reduced meal plan, I assumed that the student cannot afford paying the regular price for the meal plan.
  
After training the model, the user can make predictions for a particular student.

## Current Accuracy
The accuracy of the model is the predicted value for a particular student with a mean absolute error of about 19%
In other words, it is very probable that the student has scored anything in the range [predicted value - 19%, predicted value + 19%]

I am working on how to improve the presentation of the model. For the time being, the user should double click on the CSV file which is in the directory and import it as a table. I will update is as soon as possible.

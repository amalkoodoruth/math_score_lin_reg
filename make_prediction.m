function [predicted_score] = make_prediction(gendre, ethnicGroup, ...
    parent_level_of_edu, lunch_type, prep_course, theta)
X_sample = [1 zeros(1,5)];
flag = 0;
% Setting gendre
if gendre == "female"
    X_sample(2) = 1;
elseif gendre == "male"
    X_sample(2) = 2;
else
    print('error: gendre should be male or female');
    flag = 1;
end

% Setting ethnic group
if ethnicGroup == "group A"
    X_sample(3) = 3;
elseif ethnicGroup == "group B"
    X_sample(3) = 4;
elseif ethnicGroup == "group C"
    X_sample(3) = 5;
elseif ethnicGroup == "group D"
    X_sample(3) = 6;
elseif ethnicGroup == "group E"
    X_sample(3) = 7;
else
    print('error: ethnicGroup should be group A to E');
    flag = 1;
end

% Setting parent_level_of_edu
if parent_level_of_edu == "associate's degree"
    X_sample(4) = 8;
elseif parent_level_of_edu == "bachelor's degree"
    X_sample(4) = 9;
elseif parent_level_of_edu == "high school"
    X_sample(4) = 10;
elseif parent_level_of_edu == "master's degree"
    X_sample(4) = 11;
elseif parent_level_of_edu == "some college"
    X_sample(4) = 12;
elseif parent_level_of_edu == "some high school"
    X_sample(4) = 13;
else
    print("error: parent_level_of_edu should be any of associate's degree, bachelor's degree, high school, master's degree, some college, some high school");
    flag = 1;
end

% Setting up lunch_type
if lunch_type == "free/reduced"
    X_sample(5) = 14;
elseif lunch_type == "standard"
    X_sample(5) = 15;
else
    print('error: lunch_type should be free/reduced or standard');
    flag = 1;
end

% Setting up prep_course
if prep_course == "completed"
    X_sample(6) = 16;
elseif prep_course == "none"
    X_sample(6) = 17;
else
    print('error: prep_course should be completed or none');
    flag = 1;
end

% now the set up has been completed, we can do our prediction
% we will do the prediction only if the flag is 0

if flag == 0
   predicted_score = X_sample*theta; 
end
end

function [accuracy] = check_accuracy(X_val, y_val, theta)

y_predicted = X_val*theta;
accuracy = sum(abs(y_val- y_predicted)./y_val)/size(y_val,1)*100;

end
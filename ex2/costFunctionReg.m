function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
hypo = sigmoid(X*theta);
J = (1/m)*(-1*y'*log(hypo) - (1-y')*log(1-hypo));
J = J + (lambda/(2*m))*(sum(power(theta(2:size(theta)(2)), 2)));
normal = (1/m)*X'*(hypo-y);
grad = normal + (lambda/m)*theta;
grad(1) = normal(1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end

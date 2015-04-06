
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha
%通过一条线来匹配，给定的值，一次对未知参数进行预测，已测验二维图像，三维图像还未测验；

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
x=X(:,2);
plot(x,y,'.');
hold();

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    %依据公式theta（x）=1/m*Sigma[i=1->m](
    %(h(x[i])-y[i])*x[i]
    %)
    temp=X*theta;
    temp1=temp-y;
    temp2=temp1'*X/m;
    theta=theta-alpha*temp2';
    plot(x,temp);









    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end

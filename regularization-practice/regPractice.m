close all;
clear all;
clc;

X = load('ex5Linx.dat');
y = load('ex5Liny.dat');
m = length(y);

figure;
plotData(X, y);

%Adding polynomial features
X = [X, X.^2, X.^3, X.^4, X.^5];

[X mu sigma] = featureNormalize(X);
initial_theta = zeros(size(X, 2)+1, 1);
X = [ones(m, 1), X];

alpha = 0.01;
num_iters = 400;
lambda = 0.1;

% Init Theta and Run Gradient Descent
theta = zeros(size(X, 2), 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters, lambda);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Test theta Plot values
figure;
plotData(X(:, 2), y);
res = X * theta;
plotData(X(:, 2), res, 'b-');

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Optimize
theta2 = zeros(size(X, 2), 1);

costFunction = @(t)computeCostMulti(X, y, t, lambda);
J = 0;
theta2 = fmincg(costFunction, initial_theta, options);

fprintf('End\n');

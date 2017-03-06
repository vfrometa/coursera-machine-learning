clc;
clear all;
close all;

% Training/sample data
X = [4; 5; 6; 7; 8; 9];
y = [12; 20; 30; 42; 56; 72];
X2 = 0:0.1:7;
y2 = X2.^2-X2;

figure; % open a new figure window
hold on;
plotData(X, y, 'rx');
plotData(X2, y2, 'b-');
hold off;

m = length(y);
p = polyfit(X, y, 2)
y3 = polyval(p, X)
pause;

X = [X X.^2];
%X = featureNormalize(X);
X = [ones(m, 1) X];
theta = zeros(3, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1000;
alpha = 0.01;

% compute and display initial cost
computeCost(X, y, theta)

% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f %f\n', theta(1), theta(2), theta(3));

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3, 9] *theta;
fprintf('For x = 3, we predict a result of %f\n', predict1);

%fprintf('Program paused. Press enter to continue.\n');
%pause;




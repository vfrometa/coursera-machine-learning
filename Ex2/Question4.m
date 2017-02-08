close all;
clear;
clc;

Theta1 = magic(3);

a2 = zeros(3, 1);
x = Theta1(:, 1);
x
for i = 1:3
  for j = 1:3
    a2(i) = a2(i) + x(j) * Theta1(i, j);
  end
  a2(i) = sigmoid(a2(i));
 end

a2
 
a2 = sigmoid (Theta1 * x);
a2
%a2 = sigmoid (x * Theta1);
%a2 = sigmoid (Theta2 * x);
z = sigmoid(x); a2 = Theta1 * z;

a2
function plotData(x, y, vis)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

minX = min(x) - abs(mean(x));
maxX = max(x) + abs(mean(x));
minY = min(y) - abs(mean(y));
maxY = max(y) + abs(mean(y));

if ~exist('vis', 'var') || isempty(vis)
    vis = 'b-';
end

%hold on;
axis([minX, maxX, minY, maxY]);
grid on;
plot(x, y, vis, 'MarkerSize', 10); % Plot the data 
ylabel('Profit in $10,000s'); % Set the y−axis label 
xlabel('Population of City in 10,000s'); % Set the x−axis label      
%hold off;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);





% ============================================================

end

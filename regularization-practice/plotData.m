function plotData(X, y, plotAtt)
  if ~exist('plotAtt', 'var') || isempty(plotAtt)
    plotAtt = 'ro';
  endif
  hold on;
  grid on;
  meanX = abs(mean(X));
  meany = abs(mean(y));
  minX = min(X) - meanX;
  maxX = max(X) + meanX;  
  miny = min(y) - meany;
  maxy = max(y) + meany;    
  axis([minX, maxX, miny, maxy]);
  plot(X, y, plotAtt);
  hold off;
endfunction
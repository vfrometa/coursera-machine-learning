function displayVarSize(varValue, varName)
  [m, n] = size(varValue);
  fprintf('Size of %s is %d x %d\n', varName, m, n);
endfunction
function v = getRegularizationLambdas(seed, numberOfElements)
  v = [0 ((seed.^(0:1:numberOfElements))/100)];
endfunction
function res = mainFunction(aSample, range, increment)
    res = min(range):increment:max(range);
    res = res';
    m = size(res, 1);
    res = [res zeros(m, 1)];
endfunction
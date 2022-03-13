function polynomial = lagrange_interpolation(varargin)

  if rem(length(varargin), 2) != 0
    error('Odd number of input arguments');
  endif
  
  P = [varargin{1 : 2 : length(varargin) - 1} ; varargin{2 : 2 : length(varargin)}];
  
  points_number = length(varargin) / 2;
  function res = A(i)
    res = 1;
    
    for j = 1 : points_number
      if j != i
        res = res * (P(1, i) - P(1, j));
      endif  
    endfor
    res = 1 / res;
  endfunction
  
  numerator = @(x) 0;
  for i = 1 : points_number
    numerator = @(x) numerator(x) + (A(i) * P(2, i)) / (x - P(1, i));
  endfor

  denominator = @(x) 0;
  for i = 1 : points_number
    denominator = @(x) denominator(x) + A(i) / (x - P(1, i));
  endfor
  
  polynomial = @(x) numerator(x) / denominator(x);
  
  return;
endfunction
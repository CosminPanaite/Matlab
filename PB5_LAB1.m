%PROBLEM 5 The divided differences table 
%Legendre polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

%subplot nr linii nr coloane si a cata figura va fi
function L = LegendrePol(x,n)
  
  if n == 0
    L = ones(size(x));
    return
  endif
  
  if n == 1
    L = x ;
    return
  endif
  
  L = (1/n) * ((2*n - 1) * x .* LegendrePol(x,n-1) - (n - 1) .* LegendrePol(x,n-2));
  
  
endfunction
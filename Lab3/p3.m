f = @(x) (1 + cos(pi * x)) / (1 + x);

part = [];
for i = 0 : 20
  part = [part (0 + 10 * i / 21)];  
endfor

lagrange_points = [];
for i = 1 : 21
  lagrange_points = [lagrange_points part(1, i) f(part(1, i))];  
endfor

hold on;
f_lagrange = lagrange_interpolation(lagrange_points);
plot(0 : 0.01 : 10, arrayfun(f, 0 : 0.1 : 10));
hold off;
function value = Newton(f, a, b)
  pkg load symbolic
  syms x;
  dif = diff(f);
  d = function_handle(dif);
  arr(1) =  (a+b)/2;
  f = function_handle(f);

  for i = 2:20
   arr(i) =  (arr(i-1) - (f(arr(i-1))/d(arr(i-1))));
  endfor
  value = [arr'];
endfunction

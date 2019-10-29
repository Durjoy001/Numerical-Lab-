function value = Bisection(f, a, b)
  A(1) = a;
  B(1) = b;
  c(1) = (a+b)/2;
  fa(1) = f(a);
  fb(1) = f(b);
  fc(1) = f(c(1));
  
  for i = 2:20

    if fa(i-1)*fc(i-1) < 0 
      B(i) = c(i-1);
      A(i) = A(i-1);
    else
      A(i) = c(i-1);
      B(i) = B(i-1);
    endif
    
    fa(i) = f(A(i));
    fb(i) = f(B(i));
    c(i) = (A(i)+B(i))/2;
    fc(i) = f(c(i));
    
  endfor
  value = [A' B' fa' fb' c' fc'];
  
endfunction

function value = False(f, A, B)
  c(1) = (A(1)* f(B(1)) - B(1) * f(A(1)))/(f(B(1)) - f(A(1)));
  fa(1) = f(A(1));
  fb(1) = f(B(1));
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
    c(i) = (A(i)* f(B(i)) - B(i) * f(A(i)))/(f(B(i)) - f(A(i)));
    fc(i) = f(c(i));
    
  endfor
  value = [A' B' fa' fb' c' fc'];
  
endfunction

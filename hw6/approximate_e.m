function [ae,k] = approximate_e(delta)
  raz = exp(1)-delta;
  sum = 2;
  f(1)=1;
  f(2)=1;
  i=2;
  while sum < raz
    a = i*f(i);
    b = 1 / a;
    sum = sum + b;
    f(i+1)= a;
    i = i+1;      
  end
  ae = sum;
  k = i-1;
function s=sum3and5muls(n)
  a = [3:3:n];
  b = [5:5:n];
  s=sum(unique([a b]));
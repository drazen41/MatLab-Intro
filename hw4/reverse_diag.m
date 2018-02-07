function mat=reverse_diag(n)
  a=zeros(n);
  a(1:n+1:n^2)=1;
  mat = flip(a,2);
  %D(n:max([1,n-1]):max([n,n^2-1])) = 1;
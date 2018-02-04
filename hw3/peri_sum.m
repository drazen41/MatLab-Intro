function s=peri_sum(A)
  % s=sum([A(1,1),A(1,end),A(end,1),A(end,end)]);
  % s=sum(A(1,1:end))+sum(A(2:1:end,1))+sum(A(2:1:end,end))+sum(A(end,2:1:end-1));
  s = sum(A(1,:)) + sum(A(end,:)) + sum(A(:,1)) + sum(A(:,end)) - ( A(1,1) + A(1,end) + A(end,1) + A(end,end));
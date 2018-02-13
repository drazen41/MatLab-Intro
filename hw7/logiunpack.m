function lm=logiunpack(cv)
  n = length(cv);
  lm = zeros(n,n);
  for i=1:n
    cv(i);
    if isempty(cv{i})
      continue
    end
    k = length(cv{i});
    for j=1:k
      a = cv{i}(j);
      lm(i,a)=1;
    end
  end
  lm = logical(lm);
end





  

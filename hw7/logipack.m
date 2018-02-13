function cv=logipack(lm)
  for i=1:size(lm,1)
    a = [];
    for j=1:size(lm,2)
      b = lm(i,j);
      if b
        a = [a j];
      end
    end
    cv{i}=a;
  end
end



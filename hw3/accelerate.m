function amag = accelerate(F1,F2,m)
  F = F1 + F2;
  amag = sqrt(F(1)*F(1)+F(2)*F(2)+F(3)*F(3)) ./ m;
  
  
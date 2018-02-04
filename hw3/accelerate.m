function amag = accelerate(F1,F2,m)
  f1 = sqrt(F1(1)*F1(1)+F1(2)*F1(2)+F1(3)*F1(3));
  f2 = sqrt(F2(1)*F2(1)+F2(2)*F2(2)+F2(3)*F2(3));
  fSum = sqrt(f1*f1 + f2*f2);
  amag = fSum / m;
  %F = F1*F1+F2*f2;
  % amag = F./m;
  
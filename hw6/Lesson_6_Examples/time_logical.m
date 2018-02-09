clear w;
tic;
w = v(v>0);
lTime = toc;
fprintf('Time for logical version = %f\n',toc)
clear w
tic;
w = [];
jj = 0;
for ii = 1:length(v)
   if v(ii) >= 0
      jj = jj + 1;
      w(jj) = v(ii);
   end
end
fTime = toc;
fprintf('Time for for-loop version = %f\n',toc)
fprintf('For-loop je sporiji %d puta\n', fTime / lTime)

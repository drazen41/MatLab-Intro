function p=zero_stat(A)
  jedinicaMatrix = sum(sum(A));
  [a,b] = size(A);
  moguceJedinica = a * b;
  p = 100 - (jedinicaMatrix /moguceJedinica * 100);
  
  %pct = 100 * (numel(A) - sum(A(:))) / numel(A);
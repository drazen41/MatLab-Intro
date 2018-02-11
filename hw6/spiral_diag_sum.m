function s=spiral_diag_sum(n)
   v = 3:2:n;
s = 1 + sum(4*v.^2 - 6*(v-1)); 
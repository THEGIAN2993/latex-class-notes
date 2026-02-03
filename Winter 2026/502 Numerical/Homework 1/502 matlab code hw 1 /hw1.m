A = [1 2 3 4;5 6 7 8; 10 11 12;13 14 15 16];

max(sum(abs(A),2)) % max row sum
max(sum(abs(A),1))% max column sum
sqrt(max(eig(A'*A)))% spectral norm


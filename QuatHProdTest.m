%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

o = [1; 0; 0; 0];
i = [0; 1; 0; 0];
j = [0; 0; 1; 0];
k = [0; 0; 0; 1];

tol = 1e-12;

%   ii = jj = kk = ijk = -1.
CheckNear(QuatHProd(i, i), -o, tol);
CheckNear(QuatHProd(j, j), -o, tol);
CheckNear(QuatHProd(k, k), -o, tol);
CheckNear(QuatHProd(QuatHProd(i, j), k), -o, tol);

%   ij = k, ji = -k.
CheckNear(QuatHProd(i, j),  k, tol);
CheckNear(QuatHProd(j, i), -k, tol);

%   jk = i, kj = -i.
CheckNear(QuatHProd(j, k),  i, tol);
CheckNear(QuatHProd(k, j), -i, tol);

%   ki = j, ik = -j.
CheckNear(QuatHProd(k, i),  j, tol);
CheckNear(QuatHProd(i, k), -j, tol);

fprintf('Passed.\n');

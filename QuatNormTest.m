%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

rng(0);

q = randn(4,1);
tol = 1e-12;

% ||q|| = sqrt(q q*).
p = QuatConj(q);
n = QuatNorm(q);
CheckNear(QuatHProd(q, p), [n^2; 0; 0; 0], 1e-12);
CheckNear(QuatHProd(p, q), [n^2; 0; 0; 0], 1e-12);

fprintf('Passed.\n');

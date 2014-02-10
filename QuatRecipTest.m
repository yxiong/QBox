%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

rng(0);
tol = 1e-12;
nTest = 1000;

for iTest = 1:nTest
  q = randn(4,1);
  p = QuatRecip(q);

  CheckNear(QuatHProd(p,q), [1;0;0;0], tol);
  CheckNear(QuatHProd(q,p), [1;0;0;0], tol);
end

fprintf('Done.\n');

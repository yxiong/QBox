%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

rng(0);
tol = 1e-12;
nTest = 1000;

for iTest = 1:nTest
  % Rotate the vector by two different method and check whether the results are
  % the same.
  v = randn(3, 1);
  q = randn(4, 1);
  q = q / norm(q);
  R = QuatToRotMatx(q);

  CheckNear(RotateVecByQuat(v, q), R*v, tol);
end

fprintf('Done.\n');

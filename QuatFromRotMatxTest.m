%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

rng(0);
tol = 1e-12;
nTest = 1000;

for iTest = 1:1000
  % Convert back and forth between quaternion and rotation matrix.
  q = randn(4,1);
  q = q / norm(q);
  R = QuatToRotMatx(q);
  q2 = QuatFromRotMatx(R);
  assert(CheckNear(q, q2, tol) || CheckNear(q, -q2, tol));
end

fprintf('Passed.\n');

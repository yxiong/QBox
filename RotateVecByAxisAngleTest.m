%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

tol = 1e-12;

% Rotate 'x' axis across 'z' axis for 60 degrees.
x = [1; 0; 0];
z = [0; 0; 1];
theta = pi/3;
r = [cos(theta); sin(theta); 0];
CheckNear(RotateVecByAxisAngle(x, z, theta), r, tol);

fprintf('Passed.\n');

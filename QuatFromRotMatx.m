function q = QuatFromRotMatx(R)

% q = QuatFromRotMatx(R)
%
% Get a quaternion from a given rotation matrix 'R'.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

q = zeros(4,1);

q(1) = ( R(1,1) + R(2,2) + R(3,3) + 1) / 4;
q(2) = ( R(1,1) - R(2,2) - R(3,3) + 1) / 4;
q(3) = (-R(1,1) + R(2,2) - R(3,3) + 1) / 4;
q(4) = (-R(1,1) - R(2,2) + R(3,3) + 1) / 4;

q(q<0) = 0;   % Avoid complex number by numerical error.
q = sqrt(q);

q(2) = q(2) * sign(R(3,2) - R(2,3));
q(3) = q(3) * sign(R(1,3) - R(3,1));
q(4) = q(4) * sign(R(2,1) - R(1,2));

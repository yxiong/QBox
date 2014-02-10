function v = RotateVecByAxisAngle(u, ax, theta)

% v = RotateByAxisAngle(u, ax, theta)
%
% Rotate the 3-vector 'u' around axis 'ax' for angle 'theta' (radians),
% counter-clockwisely when looking at -axis (inverse axis) direction.
%
% INPUT:
%   u: a 3xM matrix for vectors to be rotated, each column for one vector.
%   ax: a 3xM matrix or 3x1 vector for rotation axis. If it is a 3x1 vector, all
%       the vectors 'u' are rotated according to the same axis.
%   theta: a Mx1 vector or a scalar for rotation angles. If it is a scalar, all
%          the vectors 'u' are rotated for the same angle.
%
% OUTPUT:
%   v: a 3xM matrix for output vectors, each column for one vector.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

assert(size(u,1) == 3);
M = size(u,2);

assert(size(ax,1) == 3);
if (size(ax,2) ~= M)   ax = repmat(ax, [1 M]);   end

if (length(theta) ~= M)   theta = repmat(theta, [M 1]);   end

v = zeros(3, M);
for i = 1:M
  q = QuatFromAxisAngle(ax(:,i), theta(i));
  v(:,i) = RotateVecByQuat(u(:,i), q);
end

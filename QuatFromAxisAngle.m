function q = QuatFromAxisAngle(ax, theta)

% q = QuatFromAxisAngle(ax, theta)
%
% Get a quaternion that performs the rotation around axis 'ax' for angle
% 'theta', given as
%     q = (r, v) = (cos(theta/2), sin(theta/2)*ax)
%
% INPUT:
%   ax: a 3x1 unit column vector.
%   theta: a scalar for the angle, in unit of radians.
%
% OUTPUT:
%   q: the resulting quaterion represented as a 4x1 column vector.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

q = [cos(theta/2); sin(theta/2)*ax];

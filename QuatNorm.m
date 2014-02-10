function n = QuatNorm(q)

% n = QuatNorm(q)
%
% Compute the norm of a quaternion.
%
%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

n = sqrt(sum(q.^2));

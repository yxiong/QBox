function p = QuatRecip(q)

% p = QuatRecip(q)
%
% Compute the reciprocal of quaternion 'q'.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

p = QuatConj(q) / sum(q.^2);

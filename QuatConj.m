function p = QuatConj(q)

% p = QuatConj(q)
%
% Return the conjugate of quaternion 'q'.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

p = [q(1); -q(2:4)];

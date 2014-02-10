function v = RotateVecByQuat(u, q)

% v = RotateVecByQuat(u, q)
%
% Rotate a 3-vector 'u' according to the quaternion 'q'. The output 'v' is also
% a 3-vector such that
%     [0;v] = q * [0;u] * q^{-1}.
%
%   Author: Ying Xiong.
%   Created: Oct 08, 2012.

v = QuatHProd(QuatHProd(q, [0; u]), QuatRecip(q));
v = v(2:4);

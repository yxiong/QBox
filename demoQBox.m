%   Author: Ying Xiong.
%   Created: Feb 09, 2014.

% Rotation axis.
ax = [1; 1; 1];
ax = ax / norm(ax);

% Rotation angle.
theta = -5*pi/6;

% Original vector.
u = [0.5; 0.6; sqrt(3)/2];
u = u / norm(u);

figure; hold on;
% Draw the circle frame.
nSamples = 1000;
t = linspace(-pi, pi, nSamples);
z = zeros(size(t));
plot3(cos(t), sin(t), z, 'LineWidth', 2);
plot3(z, cos(t), sin(t), 'LineWidth', 2);
plot3(cos(t), z, sin(t), 'LineWidth', 2);

% Draw rotation axis.
plot3([0 ax(1)*2], [0 ax(2)*2], [0 ax(3)*2], 'r', 'LineWidth', 2);

% Rotate the 'u' vector and draw results.
plot3([0 u(1)], [0 u(2)], [0 u(3)], 'm', 'LineWidth', 2);
v = RotateVecByAxisAngle(u, ax, theta);
plot3([0 v(1)], [0 v(2)], [0 v(3)], 'm', 'LineWidth', 2);

% Draw the circle that is
v = RotateVecByAxisAngle(repmat(u, [1, nSamples]), ax, t);
plot3(v(1,:), v(2,:), v(3,:), 'm', 'LineWidth', 2);

view(-170, 8);
axis equal; axis off;

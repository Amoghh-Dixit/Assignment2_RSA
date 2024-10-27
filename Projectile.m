g = 9.81;     
v0 = 50;      
angle = 45;   
theta = angle * pi / 180;
v0x = v0 * cos(theta);
v0y = v0 * sin(theta);
T_flight = 2 * v0y / g;
range = v0x * T_flight;
H_max = (v0y^2) / (2 * g);
t = linspace(0, T_flight, 100);
x = v0x * t;
y = v0y * t - 0.5 * g * t.^2;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;
plot(range, 0, 'ro', 'MarkerSize', 8); 
plot(range / 2, H_max, 'go', 'MarkerSize', 8);
title('Projectile Motion');
xlabel('Distance (m)');
ylabel('Height (m)');
legend('Trajectory', 'Range', 'Max Height');
grid on;
axis equal;
fprintf('Range: %.2f meters\n', range);
fprintf('Maximum Height: %.2f meters\n', H_max);
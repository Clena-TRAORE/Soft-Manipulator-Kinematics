function drawsegment5(theta1,theta3, phi1, phi3, L, width)
r1=L/theta1;
O1 = [r1*(1-cos(theta1))*cos(phi1); - r1*(1-cos(theta1))*sin(phi1); - r1*sin(theta1); 1]; %Position matrix
O2 = [2 * O1(1); 2 * O1(2); 2 * O1(3); 1];
O3 = [O2(1); O2(2); O2(3) - L; 1];

% segment 1
theta = 0 : theta1/20 : theta1;
x1 = 0 + r1*cos(phi1)*(1-cos(theta));
y1 = 0 - r1*sin(phi1)*(1-cos(theta));
z1 = 0- r1*sin(theta);
circleHandle = plot3(x1, y1, z1, 'r');
circleHandle.LineWidth = width;
%hold on

% segment 2
theta2 = theta1;
phi2 = phi1 + pi;
r2 = r1;

theta = 0 : theta2/20 : theta2;
x2 = - r2*cos(phi2)*(1-cos(theta));
y2 = r2*sin(phi2)*(1-cos(theta));
z2 = - r2*sin(theta);

x2 = 2 * O1(1) - x2;
y2 = 2 * O1(2) - y2;
z2 = 2 * O1(3) - z2;
circleHandle = plot3(x2, y2, z2, 'b');
circleHandle.LineWidth = width;

% segment 3
r3=L/theta3;
theta = 0 : theta3/20 : theta3;
x3 = - r3*cos(phi3)*(1-cos(theta));
y3 = r3*sin(phi3)*(1-cos(theta));
z3 = - r3*sin(theta);

x3 =  O2(1) + x3;
y3 =  O2(2) + y3;
z3 =  O2(3) + z3;
circleHandle = plot3(x3, y3, z3, 'y');
circleHandle.LineWidth = width;


plot3(O1(1), O1(2), O1(3), '*g');
plot3(O2(1), O2(2), O2(3), '*m');
%view(30,5);
%grid on;
end
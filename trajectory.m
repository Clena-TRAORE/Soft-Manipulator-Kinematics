function [x, y, z] = trajectory(theta1, theta3, phi1, phi3, L)
r1=L/theta1;
O1 = [r1*(1-cos(theta1))*cos(phi1); - r1*(1-cos(theta1))*sin(phi1); - r1*sin(theta1); 1]; %Position matrix
O2 = [2 * O1(1); 2 * O1(2); 2 * O1(3); 1];


r3=L/theta3;
x3 = - r3*cos(phi3)*(1-cos(theta3));
y3 = r3*sin(phi3)*(1-cos(theta3));
z3 = - r3*sin(theta3);

x =  O2(1) + x3;
y =  O2(2) + y3;
z =  O2(3) + z3;


end

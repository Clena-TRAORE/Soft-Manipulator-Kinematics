%% specific mapping | 
%% This function gives the value of theta, phi and L for each section based on the length of each tube 
function w = act(d, t, p)
phi = atan(sqrt(3)*(t + p - 2*d)/(3*(t-p)));
l = (d+t+p)/3;
k = (2*sqrt(d^2+t^2+p^2-d*t-d*p-t*p))/(5*(d+t+p)); %% 5 is the distance D from actuator center to the link center
theta = k*l;
w =[theta, phi, l];
end

%% Homogeneous function
function T = knc(theta, phi, l)
 
r11 = cos(phi)^2*(cos(theta)-1) +1;
r12 = sin(phi)*cos(phi)*(cos(theta)-1);
r13 = -cos(phi)*sin(phi);
px = l/theta*(cos(phi)*(cos(theta)));
r21 = sin(phi)*cos(phi)*(cos(theta)-1);
r22 = cos(phi)^2*(1-cos(theta))+cos(theta);
r23 = -sin(phi)*sin(theta);
py = l/theta*(sin(phi)*(cos(theta)-1));
r31 =cos(phi)*sin(theta);
r32 = sin(phi)*sin(theta);
r33 = cos(theta);
pz = l/theta*sin(theta);

T = [r11 r12 r13 px; r21 r22 r23 py; r31 r32 r33 pz; 0 0 0 1];
end
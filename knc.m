function T = knc(theta, phi, l)
 
x1 = 0 + r1*cos(phi1)*(1-cos(theta));
y1 = 0 - r1*sin(phi1)*(1-cos(theta));
z1 = 0- r1*sin(theta);

T = [r11 r12 r13 px; r21 r22 r23 py; r31 r32 r33 pz; 0 0 0 1];
end
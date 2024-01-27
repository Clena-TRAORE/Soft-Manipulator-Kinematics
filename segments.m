%% 
clear
clc
close all
%%
run('axes_3D.m')
run('draw_ground.m')
run('createtextbox.m')
%% Parameters definition
L = 10;
width = 3;
%% Animation
theta1 = pi/3;
phi1 = pi/6;
theta3 = pi/10;
phi3 = pi/2;
drawsegment5(theta1,theta3, phi1, phi3, L, width);



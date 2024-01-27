%% 
clear
clc
close all
%%
run('axes_3D.m')
run('draw_ground.m')
%% Parameters definition
L = 20;
width = 3;
%% Initial conditions
theta1 = pi/3;
phi1 = pi/6;
theta3 = pi/10000;
phi3 = pi/2;
drawsegment5(theta1,theta3, phi1, phi3, L, width);
[x0, y0, z0]=trajectory(theta1, theta3, phi1, phi3,L);
x= [x0];
y =[y0];
z= [z0];
%% Animation
phase1= linspace(pi/6,pi/6+2*pi,150);
phase1_time= length(phase1);

for t=1:phase1_time
    
    cla;
    plotcube(axes_ani, dimension, position, clr_c);
    drawsegment5(theta1,theta3, phase1(t), phi3, L, width);
    title(title_ani,'fontsize',fntsz);
    xlabel(xlabel_ani,'fontsize',fntsz);
    ylabel(ylabel_ani,'fontsize',fntsz);
    zlabel(zlabel_ani,'fontsize',fntsz);
    
    %phi3= phi3-phase1(t);
    [x_i, y_i, z_i] = trajectory(theta1, theta3, phase1(t), phi3,L);
    x = [x x_i];
    y = [y y_i];
    z = [z z_i];
    plot3(x, y, z,'.r');
    plot(axes_graph1,x);
    hold on
    plot(axes_graph2,y);
    plot(axes_graph3,z);
    
    xlabel(axes_graph1, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph1, ylabel_graph1, 'fontsize',fntsz);
    
    xlabel(axes_graph2, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph2, ylabel_graph2, 'fontsize',fntsz);
    
    xlabel(axes_graph3, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph3, ylabel_graph3, 'fontsize',fntsz);
    
    
    drawnow;
end
%%
phase2= linspace(theta3, pi/2+pi/6, 25);
phase2_time = length(phase2);

for t2=1:phase2_time
    
    cla;
    plotcube(axes_ani, dimension, position, clr_c);
    drawsegment5(theta1,phase2(t2), phase1(t), phi3, L, width);
    title(title_ani,'fontsize',fntsz);
    xlabel(xlabel_ani,'fontsize',fntsz);
    ylabel(ylabel_ani,'fontsize',fntsz);
    zlabel(zlabel_ani,'fontsize',fntsz);
    
    [x_i, y_i, z_i]=trajectory(theta1, phase2(t2), phase1(t), phi3,L);
    x = [x x_i];
    y = [y y_i];
    z = [z z_i];
    plot3(x, y, z,'.r');
    
    plot(axes_graph1,x);
    hold on
    plot(axes_graph2,y);
    plot(axes_graph3,z);
    
    xlabel(axes_graph1, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph1, ylabel_graph1, 'fontsize',fntsz);
    
    xlabel(axes_graph2, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph2, ylabel_graph2, 'fontsize',fntsz);
    
    xlabel(axes_graph3, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph3, ylabel_graph3, 'fontsize',fntsz);
    
    drawnow;
end
%%
phase3= linspace(phi3,phi3+pi,50);
phase3_time = length(phase3);

for t3 = 1:phase3_time
    cla;
    plotcube(axes_ani, dimension, position, clr_c);
    drawsegment5(theta1,phase2(t2), phase1(t), phase3(t3), L, width);
    title(title_ani,'fontsize',fntsz);
    xlabel(xlabel_ani,'fontsize',fntsz);
    ylabel(ylabel_ani,'fontsize',fntsz);
    zlabel(zlabel_ani,'fontsize',fntsz);
    
    [x_i, y_i, z_i]=trajectory(theta1, phase2(t2), phase1(t), phase3(t3),L);
    x = [x x_i];
    y = [y y_i];
    z = [z z_i];
    plot3(x, y, z,'.r');
    
    plot(axes_graph1,x);
    hold on
    plot(axes_graph2,y);
    plot(axes_graph3,z);
    
    xlabel(axes_graph1, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph1, ylabel_graph1, 'fontsize',fntsz);
    
    xlabel(axes_graph2, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph2, ylabel_graph2, 'fontsize',fntsz);
    
    xlabel(axes_graph3, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph3, ylabel_graph3, 'fontsize',fntsz);
    
    drawnow;
end

%% 
phase4 =linspace(pi/3,pi/2,25);
phase4_time = length(phase4);

for t4 = 1:phase4_time
   
    cla;
    plotcube(axes_ani, dimension, position, clr_c);
    drawsegment5(phase4(t4),phase2(t2), phase1(t), phase3(t3), L, width);
    title(title_ani,'fontsize',fntsz);
    xlabel(xlabel_ani,'fontsize',fntsz);
    ylabel(ylabel_ani,'fontsize',fntsz);
    zlabel(zlabel_ani,'fontsize',fntsz);
    
    [x_i, y_i, z_i]= trajectory(phase(t4), phase2(t2), phase1(t), phase3(t3),L);
    x = [x x_i];
    y = [y y_i];
    z = [z z_i];
    plot3(x, y, z,'.r');
    
    plot(axes_graph1,x);
    hold on
    plot(axes_graph2,y);
    plot(axes_graph3,z);
    
    xlabel(axes_graph1, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph1, ylabel_graph1, 'fontsize',fntsz);
    
    xlabel(axes_graph2, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph2, ylabel_graph2, 'fontsize',fntsz);
    
    xlabel(axes_graph3, xlabel_graph, 'fontsize',fntsz);
    ylabel(axes_graph3, ylabel_graph3, 'fontsize',fntsz);
     
    drawnow;
end

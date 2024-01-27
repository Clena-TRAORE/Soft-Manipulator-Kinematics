%% Initialisation
clr = [1 1 1];                                      % Background Color grey
unts = 'normalized';                                % Units for dimensions to normalized
lnwdth = 2;                                         % Linewidth 2
fntsz = 15;                                         % Fontsize 22

%% Positions, titles and labels
pos_fig = [0.02 0.02 0.95 0.90];                      % Position and dimension of figure

title_ani = '5DOF Soft manipulator';        % Title of animation
xlabel_ani = 'Position x';                  % Name of x-axis of Animation
zlabel_ani = 'Position z';                 
ylabel_ani = 'Position y';      

xlabel_graph = 'Step-Time t [s]';                        % Name of x-axis of Graph
ylabel_graph1 = 'X Positions';             
ylabel_graph2 = 'y Positions';             % Name of first y-axis of Graph
ylabel_graph3 = 'z Positions';             % Name of first z-axis of Graph
% Name of first y-axis of Graph
title_graph1 = 'X Trajectory tracking vs. step-time';
title_graph2 = 'Y Trajectory tracking vs. step-time';
title_graph3 = 'Z Trajectory tracking vs. step-time';

%% Initialise figures
fig = figure('color',clr,'units',unts,'position',pos_fig);    % Create a blank figure
annotation('textbox',[0.02 0.88 0.06 0.12],...
    'String',{'Constant','segment','length=','20'},...
    'FitBoxToText','off')
%%
subplot(3,2,2)                                                % Divide figure into two subplots and select second plot
graph_plot1 = plot(1,1);                                     % Initialise graph at second position
set(graph_plot1,'color', 'k','linewidth',lnwdth);             % Set Color and linewidth of first plot
set(gca, 'Color', clr)
            
axes_graph1 = gca;                                            % Save first yaxis
set(axes_graph1,'FontSize',fntsz);                            % Set Fontsize of x and y-axes

xlabel(axes_graph1, xlabel_graph, 'fontsize',fntsz);
ylabel(axes_graph1, ylabel_graph1, 'fontsize',fntsz);
title(title_graph1, 'fontsize',15);
%%
subplot(3,2,4)                                                % Divide figure into two subplots and select second plot

graph_plot2 = plot(1,1);                                     % Initialise graph at second position
set(graph_plot2,'color', 'k','linewidth',lnwdth);             % Set Color and linewidth of first plot
set(gca, 'Color', clr)
            
axes_graph2 = gca;                                            % Save first yaxis
set(axes_graph2,'FontSize',fntsz);                            % Set Fontsize of x and y-axes

xlabel(axes_graph2, xlabel_graph, 'fontsize',fntsz);
ylabel(axes_graph2, ylabel_graph2, 'fontsize',fntsz);
title(title_graph2, 'fontsize',15);
%%
subplot(3,2,6)                                                % Divide figure into two subplots and select second plot
graph_plot3 = plot(1,1);                                     % Initialise graph at second position
set(graph_plot3,'color', 'k','linewidth',lnwdth);             % Set Color and linewidth of first plot
set(gca, 'Color', clr)
            
axes_graph3 = gca;                                            % Save first yaxis
set(axes_graph3,'FontSize',fntsz);                            % Set Fontsize of x and y-axes

xlabel(axes_graph3, xlabel_graph, 'fontsize',fntsz);
ylabel(axes_graph3, ylabel_graph3, 'fontsize',fntsz);
title(title_graph3, 'fontsize',15);
%%
subplot(3,2,[1,3,5]);
axes_ani = gca;  
%axes_ani = axes(); %Create axis 

set(axes_ani,'FontSize',fntsz,'XLim',[-20 40],'YLim',[-30 20],'ZLim',[-60 5]);                                 % Set Fontsize of Animation
set(axes_ani,  'Color', clr) ;             % Set background color

title(title_ani,'fontsize',fntsz);
xlabel(xlabel_ani,'fontsize',fntsz);
ylabel(ylabel_ani,'fontsize',fntsz);
zlabel(zlabel_ani,'fontsize',fntsz);
%view(3); % for default 3D views
view(30,5);
%view(180,0)
grid on;
axis on;
hold on;
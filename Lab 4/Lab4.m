%% Lab4 - Nikola Uzelac MAT343
% MAT 343 MATLAB Assignment # 4

%% Excercise # 1

clf                               
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)       
hold on
R = [0,1;1,0];
QRT = R*T;                               
plot(QRT(1,:),QRT(2,:),'-r','linewidth',2) 
title('Example of Reflexion and Rotation')                     
legend('original triangle','modified triangle')   
grid on                                          
axis equal                                       
hold off

%% Excercise # 2

clf                               
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)       
hold on
Q = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
R = [0,1;1,0];
RQT = R*Q*T;                               
plot(RQT(1,:),RQT(2,:),'-r','linewidth',2) 
title('Example of Reflexion and Rotation')                     
legend('original triangle','modified triangle')   
grid on                                          
axis equal                                       
hold off

%% Excercise 3

clf                                     %clear all settings for the plot
Q = [cos(pi/20), -sin(pi/20); sin(pi/20), cos(pi/20)]
W = [cos(-pi/20), -sin(-pi/20); sin(-pi/20), cos(-pi/20)]
T = [-0.5,0,0.5,-0.5;-1,1,-1,-1];
D = 1.25*eye(2);
p = plot(T(1,:),T(2,:));                % plot the triangle
axis([-10,10,-10,10])                   % set size of the graph
axis square                             % make the display square
figure(gcf)                             % display graphic window
% Adjust the windows on your screen so that both the command window 
% and the graphics window show
hold on                                   % hold the current graph
for i = 1:40
   T = Q*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end

for i = 1:40
   T = W*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end
hold off

%% Excercise 4

clf                                     %clear all settings for the plot
Q = [cos(pi/20), -sin(pi/20); sin(pi/20), cos(pi/20)]
W = [cos(-pi/20), -sin(-pi/20); sin(-pi/20), cos(-pi/20)]
T = [-0.5,0,0.5,-0.5;-1,1,-1,-1];
D = 1.25*eye(2);
U = .8*eye(2);
p = plot(T(1,:),T(2,:));                % plot the triangle
axis([-10,10,-10,10])                   % set size of the graph
axis square                             % make the display square
figure(gcf)                             % display graphic window
% Adjust the windows on your screen so that both the command window 
% and the graphics window show
hold on                                   % hold the current graph

for i = 1:10
   T = D*Q*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end

for i = 1:10
   T = U*W*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end

hold off

%% Excercise 5

% (a)

clf
T=[-0.5,0,0.5,-0.5;-1,1,-1,-1;1,1,1,1];   % define the triangle in homogeneous coordinates
c1 =.1; c2 = .1;
M1 = [1,0,c1;0,1,c2;0,0,1];   % define the first translation matrix
M2 = [1,0,-c1;0,1,0;0,0,1];   % define the second translation matrix
M3 = [1,0,c1;0,1,-c2;0,0,1];
p = plot(T(1,:),T(2,:));   % plot the original triangle
axis([-7,7,-7,7])
axis square
figure(gcf)
for i = 1:20
    T = M1*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end
for i = 1:40
    T=M2*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end

for i = 1:20
    T=M3*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end

% (b)

clf
Q = [cos(pi/40), -sin(pi/40), 0; sin(pi/40), cos(pi/40), 0; 0, 0, 1]
T=[-0.5,0,0.5,-0.5;-1,1,-1,-1;1,1,1,1];   % define the triangle in homogeneous coordinates
c1 =.1; c2 = .1;
M1 = [1,0,c1;0,1,c2;0,0,1];   % define the first translation matrix
M2 = [1,0,-c1;0,1,0;0,0,1];   % define the second translation matrix
M3 = [1,0,c1;0,1,-c2;0,0,1];
p = plot(T(1,:),T(2,:));   % plot the original triangle
axis([-7,9,-7,7])
axis square
figure(gcf)
for i = 1:20
    T = Q*M1*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end
for i = 1:40
    T= Q*M2*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end

for i = 1:20
    T= Q*M3*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end
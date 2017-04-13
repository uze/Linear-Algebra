%% Lab5 - Nikola Uzelac MAT343
% MAT 343 MATLAB Assignment # 5

%% Question # 1

%(a)

% The best straight line model is the one that can fit the data on the
% graph linearly with a slope close to 0


%(b)

format short e

x = [1:1:100]';
y = randn(size(x));

X = [ones(size(x)), x];

z = X' * y;
S = X' * X;

U = chol(S);

w = U'\z;
c = U\w

plot(x,y, 'o')

q = x;

fit = c(1) + c(2) * q;

hold on

plot(q, fit, 'r');

    %(i)
    
    % Slope: -4.4533e-01
    % Y-Intercept: 5.0652e-03
    
    fit = c(1) + c(2) * x;
    
    plot(x, fit, 'r');
    
    %(ii)
    
    % Yes the values confirm my answer as both the values of Y-Intercept and Slope
    % are close to 0.
    
 %% Question # 2

 figure
 
 dat = load('co2.dat');
 
 x = dat(:,1);
 y = dat(:,2);
 
 plot(x,y,'o')
 
 figure
 
 % (a)
 
        X = [ones(size(x)), x];

        z = X' * y;
        S = X' * X;

        U = chol(S);

        w = U'\z;
        c = U\w

        plot(x,y, 'o')

        q = x;

        fit = c(1) + c(2) * q;

        hold on
        
        axis tight

        plot(q, fit, 'k', 'linewidth', 2);
 
        
        % c1 = -2.5955e+03
        % c2 = 1.4830e+00
 % (b)
        
        x = dat(:,1);
        y = dat(:,2);
 
        X = [ones(size(x)), x, x.^2];

        z = X' * y;
        S = X' * X;

        U = chol(S);

        w = U'\z;
        c = U\w

        plot(x,y, 'o')

        q = x;

        fit = c(1) + c(2) * q + c(3) * q.^2;

        hold on
        
        axis tight

        plot(q, fit, 'linewidth', 2); 
        
        legend('data points', 'linear fit', 'quadratic fit', 'location', 'northwest')
        
        % c1 = 4.4149e+04
        % c2 = -4.5606e+01
        % c3 = 1.1858e-02
        
        figure
        
%% Question # 3

    % (a)
    
    x = [1;2;3;4;5;6;7;8;9;10;11;12]
    y = [69.2;77.5;84.7;86.8;90.1;105.9;105.1;107.7;100.3;90.0;73.4;65.4]
    
        X = [ones(size(x)), x, x.^2, x.^3, x.^4, x.^5];

        z = X' * y;
        S = X' * X;

        U = chol(S);

        w = U'\z;
        c = U\w

        plot(x,y, 'o')

        q = x;

        fit = c(1) + c(2) * q + c(3) * q.^2 + c(4) * q.^3 + c(5) * q.^4 + c(6) * q.^5 ;

        hold on
        
        axis tight

        plot(q, fit, 'linewidth', 2); 
        
        % c1 = 4.2877e+01
        % c2 = 3.9841e+01
        % c3 = -1.6978e+01
        % c4 = 3.6134e+00
        % c5 = -3.3493e-01
        % c6 = 1.0812e-02
        
        figure
        
   % (b)
   
    x = [1;2;3;4;5;6;7;8;9;10;11;12]
    y = [69.2;77.5;84.7;86.8;90.1;105.9;105.1;107.7;100.3;90.0;73.4;65.4]
    
    X = [ones(size(x)), x, x.^2, x.^3, x.^4, x.^5];
    
    c = X\T
    c = c([6:-1:1]);
    q = 1:0.1:12;
    z = polyval(c,q);
    figure
    plot(q,z,m,T,'o');
    axis tight
    
        % c1 = 4.2877e+01
        % c2 = 3.9841e+01
        % c3 = -1.6978e+01
        % c4 = 3.6134e+00
        % c5 = -3.3493e-01
        % c6 = 1.0812e-02
        
    %(a) They are the same 
    %(b) Line is a closer and more accurate fit to the data set
    
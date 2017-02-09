%% Lab2 - Nikola Uzelac MAT343
% MAT 343 MATLAB Assignment # 2

%% Question # 1

n = 1000

A = floor(10*rand(n));

b = sum(A')';

z = ones(n,1);

%% (i)

tic, x = A\b; toc

tic, y = inv(A)*b; toc

% x = A\b seems to be faster.

%% (ii)

sum(abs(x-y))

sum(abs(y-z))

% sum(abs(y-z)) is more accurate.

%% (b)

n = 2000

A = floor(10*rand(n));

b = sum(A')';

z = ones(n,1);

tic, x = A\b; toc

tic, y = inv(A)*b; toc

% x = A\b seems to be faster.

sum(abs(x-y))

sum(abs(y-z))

% sum(abs(y-z)) seems to be faster.

n = 5000

A = floor(10*rand(n));

b = sum(A')';

z = ones(n,1);

tic, x = A\b; toc

tic, y = inv(A)*b; toc

% x = A\b is much faster.

sum(abs(x-y))

sum(abs(y-z))

% sum(abs(x-y)) is faster

%% (c)

%  The exact solution of the system of Ax = b is the vector z as x acts as
%  an algebreic mean to find b. Where as in the case of Az = b it is z
%  acting as that mean. This manipulation is interchangable between the
%  two.

%% Question 2

n = 100

A = eye(n) - triu(ones(n),1);

b = sum(A')';

z = ones(n,1);

x = A\b;
y = inv(A)*b;

sum(abs(x-z))
sum(abs(y-z))

% sum(abs(x-z)) seems to be more accurate displaying a 0 value
%% Question 3

%% (a)
A = floor(10*rand(6));
b = floor(20*rand(6,1))-10;

x = A\b;

x

%% (b)

U = rref([A, b])

U

%% (c)

U(:,7) - x

%% (d)

A(:,3) = 4*A(:,1)+5*A(:,2)

rref([A b])

% No solutions as zero cant equal 1

%% (e)

y = floor(20*rand(6,1)) - 10;
c = A*y;

% A and y are defined and c is indirectly defined as its multiplying the
% two defined values (A and y) so when we carry out the arithmatic we are
% guaranteed at least one solution.

%% (f)

rref([A c])

% There are an infinite amount of solutions judging from the bottom row.

%% Question 4

%{

function [ y ] = myrowproduct( A, x )

% Evaluate matrix A row by row
%   Detailed explanation goes here
[m,n] = size(A);

[p,q] = size(x);

if (n == p && q == 1)
    y = zeros(m,1);
    for i = 1:m
        y(i) = A(i,:)*x;
    end
else
    disp('Dimensions do not match')
    y = [];
end
end

%}

A = rand(2,3)
x = rand(3,1)
myrowproduct(A, x)

A = rand(3,4)
x = rand(4,1)
myrowproduct(A, x)

A = rand(3,4)
x = rand(1,4)
myrowproduct(A, x)

%% Question 5

%% (a)

%{

function [ C ] = columnproduct( A, B )

% Evaluate matrix A row by row
%   Detailed explanation goes here
[m,n] = size(A);
[p,q] = size(B);
if (n == p)
    C = zeros(m,q);
    for i = 1:q
        C(:,i) = A*B(:,i);
    end
else
    disp('Dimensions do not match')
    C = []
end
end

%}
A = rand(2, 3)
B = rand(3, 2)
A*B
columnproduct(A,B)

A = rand(3, 4)
B = rand(4, 2)
A*B
columnproduct(A,B)

A = rand(3, 4)
B = rand(2, 4)
columnproduct(A,B)

%% (b)

%{

function [ C ] = rowproduct( A, B )

% Evaluate matrix A row by row
%   Detailed explanation goes here
[m,n] = size(A);
[p,q] = size(B);
if (n == p)
    C = zeros(m,q);
    for i = 1:m
        C(i,:) = A(i,:)*B;
    end
else
    disp('Dimensions do not match')
    C = []
end
end

%}
A = rand(2, 3)
B = rand(3, 2)
A*B
rowproduct(A,B)

A = rand(3, 4)
B = rand(4, 2)
A*B
rowproduct(A,B)

A = rand(3, 4)
B = rand(2, 4)
rowproduct(A,B)

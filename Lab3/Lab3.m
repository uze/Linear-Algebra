%% Lab3 - Nikola Uzelac MAT343
% MAT 343 MATLAB Assignment # 3

%% Question # 1

E1 = eye(4);
E1([1,3], :)=E1([3,1],:);

E2 = eye(4);
E2(3,3) = 6;

E3 = eye(4);
E3(2,1)=5;

A = floor(10*rand(4,3))

% This swaped the first and thrid row
E1*A
% This multiplied the third row by 6
E2*A
% This multiplies row one by 5 and row two.
E3*A

%% Question 2

%(a)

A = [2, -1, 4; 6, 2, 13; -4, 7, 4]

E1 = eye(3);
E1(2,1) = -3
E1*A

E2 = eye(3);
E2(3,1) = 2
E2*A

E3 = eye(3);
E3(3,2) = -1
E3*A

U = E3*E2*E1*A

% (b) 

L = E1^-1 * E2^-1 * E3^-1

%% Question 3

p = [2, 5, 1, 3, 4];
E = eye(length(p));
E = E(p,:)

A = floor(10*rand(5))

% (a)

% Changed the matrix to row 3, row 1, row 4, row 5, row 2. 

E*A

A

% It does column operations on given matrix

A*E

A

%(b)

% They are exactly the same

E^-1

E'

%% Question 4

A = [4, 1, 2, -3; -3, 3, -1, 4; -1, 2, 5, 1; 5, 4, 3, -1]
b = [-16; 20; -4; -10]

%(a)
[L, U, P] = lu(A)
P*A
L*U

%(b)
x_lu = (A^(-1))* b

%(c)

x = [-1, 1, -2, 3]'

norm(x_lu - x)

%% Question 5

A = rand(500); x = ones(500, 1); b=A*x;

%(a)

tic; R = rref([A, b]); x_rref = R(:,end); toc

%(b)

tic ; [L, U, P] = lu(A); x_lu = (A^(-1))* b; toc

% x_lu factorization method is much faster

%(c)

% Accuracy for x_rref
norm(x_rref - x)

% Accuracy for x_lu
norm(x_lu - x)
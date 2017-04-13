%% Lab6 - Nikola Uzelac MAT343
% MAT 343 MATLAB Assignment # 6

%% Question # 1

A = imread('cauchybw.jpg');

B = double (A(:,:,1)) + 1;

B = B/256;

[U S V] = svd(B);

size(U);

size(S);

size(V);

% The dimensions of U,S, and V are 310 x 310.

%% Problem 2 

[U S V] = svd(B);

B1 = S(1,1)*U(:,1)*V(:,1)';

rank(B1);

norm(B-B1, 'fro');

C = zeros(size(A));

C(:,:,1) = B1;
C(:,:,2) = B1;
C(:,:,3) = B1;

C = max(0,min(1,C));

image(C)

%% Problem 3

B10 =  S(1,1)*U(:,1)*V(:,1)';

for i = 2:10
    B10 = B10 + S(i,i)*U(:,i)*V(:,i)';
end

rank(B10);

norm(B - B10, 'fro')

C = zeros(size(A));

C(:,:,1) = B10;
C(:,:,2) = B10;
C(:,:,3) = B10;

C = max(0,min(1,C));

figure

image(C)

%% Problem 4

% Rank 20

B20 =  S(1,1)*U(:,1)*V(:,1)';

for i = 2:20
    B20 = B20 + S(i,i)*U(:,i)*V(:,i)';
end

rank(B20);

norm(B - B20, 'fro')

C = zeros(size(A));

C(:,:,1) = B20;
C(:,:,2) = B20;
C(:,:,3) = B20;

C = max(0,min(1,C));

figure

image(C)

% Rank 30

B30 =  S(1,1)*U(:,1)*V(:,1)';

for i = 2:30
    B30 = B30 + S(i,i)*U(:,i)*V(:,i)';
end

rank(B30);

norm(B - B30, 'fro')

C = zeros(size(A));

C(:,:,1) = B30;
C(:,:,2) = B30;
C(:,:,3) = B30;

C = max(0,min(1,C));

figure

image(C)

% Rank40

B40 =  S(1,1)*U(:,1)*V(:,1)';

for i = 2:40
    B40 = B40 + S(i,i)*U(:,i)*V(:,i)';
end

rank(B40);

norm(B - B40, 'fro')

C = zeros(size(A));

C(:,:,1) = B40;
C(:,:,2) = B40;
C(:,:,3) = B40;

C = max(0,min(1,C));

figure

image(C)

% The rank 20 gives the first insight of what the image truly is

%% Problem 5

% The rank which would reproduce the original image is 310.

%% Problem 6

% (i)

% N = k + k * m + k * n will find the coressponding data.

B50 = 50;

correspondingData = B50 + B50 * size(U) + B50 * size(V)

% (ii)

% So the total data needed is k(m+n)+k. In this case U's size is
% represented by m and V's size is represented by n.

sizeOfB = size(B);

%tot = sizeB(1) * sizeB(2);


% The percentage of compression is about 25% of the original image

%% Problem 7

% This is to find the smallest val of K so that the rank of k can approximate if the matrix uses more data than the original picture

% tot/(1+sizeU(1) + sizeV(1))



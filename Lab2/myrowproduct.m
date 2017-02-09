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



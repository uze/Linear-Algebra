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

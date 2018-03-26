function X = solveMultiple(A, B)

[m, n] = size(A);
if m ~= n
    error("A must be a square matrix.");
end

[m1, n1] = size(B);
if m1 ~= m
    error("B must have the same number of rows as A");
end
 
[L, U] = lu(A);

% X must have the same dimensions as B
% A - mxm, B - mxm => X - mxn since mxm * mxn = mxn
X = zeros(m1, n1);

for i = 1:n1
    % AX = B; LUX = B; UX = Y & LY = B
    Y = L\B(:,i);
    Xi = U\Y;
    X(:,i) = Xi;
end
end


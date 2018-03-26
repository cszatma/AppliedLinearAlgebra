function B = inverse(A)
[m, n] = size(A);

% Make sure A is a square matrix
if m ~= n
    error("Matrix must be square.");
end

I = eye(n, n);
[L, U] = lu(A);
invA = eye(n);

% invA[j] = X where AX = ej
% ej = I[j]
% AX = B => LUX = B => UX = Y & LY = B
% Y = L\B & X = U\Y
for i = 1:n
    ej = I(:,i);
    %X = A\ej;
    % Using L and U requires less computation than using X
    Y = L\ej;
    X = U\Y;
    invA(:,i) = X;
end

B = invA;
end


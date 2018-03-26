function [P, E] = rowReducedForm(A)
    [m, n] = size(A);
    Q = rref([A eye(m)]);
    P = Q(1:m, n+1:n+m);
    E = Q(1:m, 1:n);
end
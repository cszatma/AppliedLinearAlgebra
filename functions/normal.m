function [P, Q, N] = normal(A)
[m, n] = size(A);
% Get the RREF of [A|I]
% Returns [E|P]
Eaug = rref([A eye(m)]);

% Extract RREF of A - all rows, columns 1 to n
Ea = Eaug(:,1:n);
% Extract P - all rows, columns n+1 which is right after rrefA, to the end
P = Eaug(:,(n+1):(n+m));

% Get the transpose of RREF of A
Eat = Ea';

EEat = rref([Eat eye(n)]);
Q = EEat(:,(m+1):(m+n))';

% Get rank-normal form
N = P * A * Q;
end


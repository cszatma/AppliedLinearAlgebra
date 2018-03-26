function V = vandermonde(X)
%VANDERMONDE Creates a vandermonde matrix using the given vector X
    n = length(X);
    Z = zeros(n);
    for i = 1:n
        Z(:,i) = X.^(i-1);
    end
    V = Z;
end
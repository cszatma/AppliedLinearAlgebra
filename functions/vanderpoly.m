function P = vanderpoly(X, Y)
    V = vandermonde(X);
    P = V\Y;
end


function P = columnSpace(A)
    [~, basicCols] = rref(A);
    P = A(:,basicCols);
end

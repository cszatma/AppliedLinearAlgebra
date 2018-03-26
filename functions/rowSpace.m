function P = rowSpace(A)
    [~, basicRows] = rref(A');
    P = A(basicRows,:)';
end

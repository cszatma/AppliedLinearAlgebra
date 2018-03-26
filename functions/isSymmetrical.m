function b = isSymmetrical(A)
    [m, n] = size(A);
    
    if m ~= n
        b = 0;
        return;
    end
    
    % If A is symmetrical then At is equal to A
    B = A == A';
    if B == 1
        b = 1;
    else
        b = 0;
    end
end
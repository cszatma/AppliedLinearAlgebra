function X = isLinearCombination(A, V)
    rankA = rank(A);
    rankAV = rank([A V]);
    if rankAV > rankA
        % Then there are no solutions to the augmented matrix
        X = 0;
        return;
    else
        % There is at least one solution
        % therefore V is a linear combination of the columns of A
        X = 1;
    end
end


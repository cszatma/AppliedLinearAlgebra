function T = isEqualAbs(A, B, tolerance)
    if nargin < 3
        tolerance = 1e-6;
    end
    
    T = abs(A - B) <= tolerance;
end


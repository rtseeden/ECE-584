function Arr = ChebyshevArr(N, db)
% editor:       Nitai Fingerhut
% last editted: 18-01-19
%
% description:
%   returns the N-th order Chebyshev Array for desirable restlessness.
%   note that array is symmetrical in relation to its center.
%
% input:
%   1. N   ; order of array.
%   2. db  ; desirable restlessness.
%
% output:
%   1. Arr ;  N-th order Chebyshev Array (1XN vector of doubles).
    if (nargin ~= 2)
        error('wrong number of input arguments');
    end
    deg = N - 1;
    R0  = 10 ^ (db/20);
    Z0  = cosh((acosh(R0)/deg));
    Z0  = Z0 .^ (mod(N+1,2):2:deg).';
    syms z
    p = chebyshevT(0:deg, z);
    Coeffs = zeros(ceil(N/2));
    j=0;
    for i = mod(N+1,2):2:N
    j = j+1;
    Bu = double(coeffs(p(i+1),z));
    Bu = padarray(Bu, [0 ceil(N/2)-length(Bu)], 'post').';
    Coeffs(:,j) = Bu;
    end
    sol = Bu .* Z0;
    Arr = mldivide(Coeffs, sol).';
    Arr = Arr / Arr(end);
    if (mod(N,2) == 0)
    Arr = [flip(Arr), Arr];
    end
    if (mod(N,2) == 1)
    Arr(1) = Arr(1)*2;
    Arr = [flip(Arr), Arr(2:end)];
    end
end
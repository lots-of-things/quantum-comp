function [ H ] = H_gate( hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hIndex>N)
        N=hIndex;
    end
    hgate = [1 1;1 -1]/sqrt(2);
    H = gate_recur(hIndex, N, hgate, 1);

end


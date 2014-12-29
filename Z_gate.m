function [ Z ] = Z_gate( zIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(zIndex>N)
        N=zIndex;
    end
    zgate = [1 0; 0 -1];
    Z = gate_recur(zIndex, N, zgate, 1);

end


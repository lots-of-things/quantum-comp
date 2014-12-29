function [ NOT ] = NOT_gate( hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hIndex>N)
        N=hIndex;
    end
    notgate = [0 1; 1 0];
    NOT = gate_recur(hIndex, N, notgate, 1);

end


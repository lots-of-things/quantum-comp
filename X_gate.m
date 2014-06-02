function [ X ] = X_gate(lIndex, hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(lIndex>hIndex)
        temp = lIndex;
        lIndex = hIndex;
        hIndex = temp;
    end
    egate = CHZ_gate(hIndex-lIndex);
    X = C_gate_recur(lIndex, hIndex, N, egate, 1);
   
end


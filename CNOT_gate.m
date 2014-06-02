function [ CNOT ] = CNOT_gate(lIndex, hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    flip = 0;
    if(lIndex>hIndex)
        flip = 1;
        temp = lIndex;
        lIndex = hIndex;
        hIndex = temp;
    end
    ngate = CN_gate(hIndex-lIndex, flip);
    CNOT = C_gate_recur(lIndex, hIndex, N, ngate, 1);
   
end


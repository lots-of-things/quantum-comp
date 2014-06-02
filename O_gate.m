function [ O ] = O_gate(lIndex, hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(lIndex>hIndex)
        temp = lIndex;
        lIndex = hIndex;
        hIndex = temp;
    end
    egate = EntO_gate(hIndex-lIndex);
    O = C_gate_recur(lIndex, hIndex, N, egate, 1);
   
end


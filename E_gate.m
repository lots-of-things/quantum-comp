function [ E ] = E_gate(lIndex, hIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(lIndex>hIndex)
        temp = lIndex;
        lIndex = hIndex;
        hIndex = temp;
    end
    egate = Ent_gate(hIndex-lIndex);
    E = C_gate_recur(lIndex, hIndex, N, egate, 1);
   
end


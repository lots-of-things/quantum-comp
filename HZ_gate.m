function [ HZ ] = HZ_gate( hzIndex, N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hzIndex>N)
        N=hzIndex;
    end
    hzgate = [1 1;1 -1]*[1 0; 0 -1]/sqrt(2);
    HZ = gate_recur(hzIndex, N, hzgate, 1);

end


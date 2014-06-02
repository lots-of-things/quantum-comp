function [ FHZ ] = FHZ_gate( hzIndex, N, f )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hzIndex>N)
        N=hzIndex;
    end
    hzgate = [1 1;1 -1]*[1 0; 0 -1]/sqrt(2);
    hzgate = (f*eye(2^N)+hzgate)/sqrt(f^2+f*sqrt(f)+1);
    FHZ = gate_recur(hzIndex, N, hzgate, 1);

end


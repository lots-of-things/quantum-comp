function [ FH ] = FH_gate( hIndex, N, f )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hIndex>N)
        N=hIndex;
    end
    hgate = [1 1;1 -1]/sqrt(2);
    hgate = (f*eye(2)+hgate)/sqrt(f^2+f*sqrt(f)+1);
    FH = gate_recur(hIndex, N, hgate, 1);

end


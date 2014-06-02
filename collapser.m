function [ c ] = collapser( hIndex, N, state )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    if(hIndex>N)
        N=hIndex;
    end
    hgate = state*state';
    c = gate_recur(hIndex, N, hgate, 1);

end


function [ CN ] = CN_gate( N, flip )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    m = [1 0 0 0;0 1 0 0; 0 0 0 1; 0 0 1 0];
    if(flip)
        m = bchange(m);
    end
    tl = gate_recur(N, N, m(1:2,1:2), 1);
    tr = gate_recur(N, N, m(1:2,3:4), 1);
    bl = gate_recur(N, N, m(3:4,1:2), 1);
    br = gate_recur(N, N, m(3:4,3:4), 1);
    CN = [tl tr; bl br];

end


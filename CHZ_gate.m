function [ CHZ ] = CHZ_gate( N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    m = [eye(2) zeros(2); zeros(2) HZ_gate(1,1)];   
    tl = gate_recur(N, N, m(1:2,1:2), 1);
    tr = gate_recur(N, N, m(1:2,3:4), 1);
    bl = gate_recur(N, N, m(3:4,1:2), 1);
    br = gate_recur(N, N, m(3:4,3:4), 1);
    CHZ = [tl tr; bl br];

end


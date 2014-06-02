function [ EntO ] = EntO_gate( N )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    A = [0 0 0 1; 1 0 0 0; 0 1 0 0; 0 0 1 0];
    P = [1/2 1/sqrt(2) 1 1/sqrt(2);1/2 1/2 0 0; 1/2 1/2 0 1/sqrt(2); 1/2 0 0 0];
    m = P*A/P;   
    tl = gate_recur(N, N, m(1:2,1:2), 1);
    tr = gate_recur(N, N, m(1:2,3:4), 1);
    bl = gate_recur(N, N, m(3:4,1:2), 1);
    br = gate_recur(N, N, m(3:4,3:4), 1);
    EntO = [tl tr; bl br];

end


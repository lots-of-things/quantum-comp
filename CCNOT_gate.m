function [ CCNOT ] = CCNOT_gate( )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    
    CCNOT = [eye(6) zeros(6,2);zeros(2,6) [0 1; 1 0]];
    
end


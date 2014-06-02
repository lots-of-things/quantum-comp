function [ r ] = bchange(m )
%H_GATE Summary of this function goes here
%   Detailed explanation goes here
    N = length(m);
    bc = eye(N);
    for i = 2:2:N/2
        temp = bc(:,N/2 + i - 1);
        bc(:,N/2 + i - 1) = bc(:,i);
        bc(:,i) = temp;
    end
    r = bc*m*bc;
end


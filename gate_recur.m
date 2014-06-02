function [ G ] = gate_recur( gIndex, N, gate, curIndex )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    myjob = eye(2);
    if(curIndex==gIndex)
        myjob = gate;
    end
    if(curIndex==N)
        G = myjob;
    else
        G = kron(myjob, gate_recur(gIndex,N,gate,curIndex+1));
    end
end


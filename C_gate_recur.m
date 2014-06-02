function [ C ] = C_gate_recur(lIndex, hIndex, N, gate, curIndex )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    myjob = eye(2);
    if(curIndex==lIndex)
        myjob = gate;
    end
    if(curIndex==N||(curIndex==lIndex&&hIndex==N))
        C = myjob;
    else
        if(curIndex==lIndex)
            C = kron(myjob, C_gate_recur(lIndex, hIndex, N, gate, hIndex+1));
        else
            C = kron(myjob, C_gate_recur(lIndex, hIndex, N, gate, curIndex+1));
        end
    end
end


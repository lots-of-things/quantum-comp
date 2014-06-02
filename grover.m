function [game] = grover(game)
    temp = zeros(2^6,1);
    temp(1,1)=1;
    for i=1:6
        temp = H_gate(i,6)*temp;
    end
    g = 2*temp*temp';
    g = g-eye(size(g));
    game = kron(g,eye(8))*game;
end
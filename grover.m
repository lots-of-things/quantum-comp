function [game] = grover(game, gamebits)
    temp = ones(2^gamebits,1);
    temp = temp/norm(temp);
    g = 2*temp*temp';
    g = g-eye(size(g));
    game = g*game;
end
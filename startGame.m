function [game] = startGame(gamebits)
global hit
hit = randi(2^gamebits);

    game = [1; zeros(2^gamebits-1,1)];
end
function [game] = grover(game)
    avg = mean(game);
    game = 2*avg-game;
end
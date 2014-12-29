function [score] = submitGame(game)
global hit
    if(game'*game<=1.000001&&game'*game>=0.99999)
        score = game(hit)^2;
    else
        score = -1;
    end
end
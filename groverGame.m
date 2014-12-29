gamebits = 4;
start = startGame(gamebits);
game = start;
for i=1:gamebits
    game = H_gate(i,gamebits)*game;
end
for i=1:pi*sqrt(2^gamebits)/4
    [game] = play(game);
    game = grover(game, gamebits);
end
submitGame(game)
gamebits = 3;
start = startGame(gamebits);
game = start;
for i=1:gamebits
    game = H_gate(i,gamebits)*game;
end
mean((game))
for i=1:pi*sqrt(2^gamebits)/4
    [game] = play(game);
    mean(game)
    game = grover(game);
end
submitGame(game)
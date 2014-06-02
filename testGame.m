gamebits = 3;

start = startGame(gamebits);
game = start;
game = H_gate(6,6)*NOT_gate(6,6)*start;
for i=1:20
    [game2] = play(game);
    game = grover(game2);
end

    plot(start,'r.')
    figure; plot(game,'.');
% 
% [game p] = play(start, game, HZ_gate(1,gamebits));
% p
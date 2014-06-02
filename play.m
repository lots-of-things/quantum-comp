function [game] = play(game)
    
    
    
%     game = CNOT_gate(4,7,9)*CNOT_gate(6,7,9)*game;
%     
%     game = CNOT_gate(4,7,9)*CNOT_gate(6,7,9)*CNOT_gate(5,8,9)*NOT_gate(8,9)*game;
%     
%     game = kron(eye(2^6),CCNOT_gate())*game;
%     
%     p = [probs(1:3,1)';probs(4:6,1)';probs(7:9,1)'];
    
    game(1:100:end) = -game(1:100:end);
end
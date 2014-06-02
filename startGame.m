function [game] = startGame(gamebits)

    superpose = [1; zeros(2^6-1,1)];
    superpose = superpose/norm(superpose);
    
    for i=1:3
        superpose = H_gate(i,gamebits+3)*superpose;
    end
    
    
    
    
    
    
    
    
    
    game = superpose;
end
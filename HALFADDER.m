function [S,C]=HALFADDER(x,y)
S=XOR(x,y);
C=AND(x,y);
end

function [a,b,c,d,e,f,g,h]=DEMUX8by1(I,S0,S1,S2)
OUT1=NOT(S0);
OUT2=NOT(S1);
OUT3=NOT(S2);

a=And4(I,OUT3,OUT2,OUT1);
b=And4(I,OUT3,OUT2,S0);
c=And4(I,OUT3,S1,OUT1);
d=And4(I,OUT3,S1,S0);
e=And4(I,S2,OUT2,OUT1);
f=And4(I,S2,OUT2,S0);
g=And4(I,S2,S1,OUT1);
h=And4(I,S2,S1,S0);

end
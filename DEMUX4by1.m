function [a,b,c,d]=DEMUX4by1(I,S0,S1)
OUT1=NOT(S0);
OUT2=NOT(S1);
a=And3(I,OUT1,OUT2);
b=And3(I,OUT1,S1);
c=And3(I,S0,OUT2);
d=And3(I,S0,S1);
end
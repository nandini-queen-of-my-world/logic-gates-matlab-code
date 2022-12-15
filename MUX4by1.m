function [Y]=MUX4by1(s1,s0,i0,i1,i2,i3)
OUT1=NOT(S0);
OUT2=NOT(S1);

OUT3=AND(i0,OUT2);
OUT4=AND(OUT3,OUT1);

OUT5=AND(i1,OUT2);
OUT6=AND(OUT5,s0);

OUT7=AND(i2,s1);
OUT8=AND(OUT7,OUT1);

OUT9=AND(i3,s1);
OUT10=AND(OUT9,OUT1);

OUT11=OR(OUT4,OUT6);
OUT12=OR(OUT8,OUT10);

Y=OR(OUT11,OUT12);
end
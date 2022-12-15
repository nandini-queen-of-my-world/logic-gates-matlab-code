%%using two halfadders

%function [s,c]=FULLADDER(A,B,Cin)
%[out1,out2]=HALFADDER(A,B);
%[s,out3]=HALFADDER(out1,Cin);
%c=OR(out2,out3);
%end

function [s,c]=FULLADDER(A,B,Cin)
out1=XOR(A,B);
s=XOR(out1,Cin);
out2=AND(A,B);
out3=AND(out1,Cin);
c=OR(out2,out3);
end
clear all;
%%%notes


d4=293.66;
e4=329.63;
f4=349.23;
g4=392.00;
a4=440;
b4=493.88;
%%%

c3=130.81;
c4=261.63;
eb4=311.13;
ab2=103.83;
ab3=207.65;
g2=98.00;
g3=196.00;

%sd_half=[c3 0 c3 0 c4 0 c4 0 eb4 0 eb4 0 c4 0 c4 0 ab2 0 ab2 0 ab3 0 c4 0 g2 0 g2 0 g3 0 c4 0];
sd_half=[c3 0.00001 c3 0.00001 c4 0.00001 c4 0.00001 eb4 0.00001 eb4 0.00001 c4 0.00001 c4 0.00001 ab2 0.00001 ab2 0.00001 ab3 0.00001 c4 0.00001 g2 0.00001 g2 0.00001 g3 0.00001 c4 0.00001];
sweet_dreams=[sd_half sd_half];
nn=length(sweet_dreams);

fc=500;
C_res=0.75; %%% 0 < C_res < 1 %%% 

%[melody] = synth(sweet_dreams,nn);

[melody] = synth_v2(sweet_dreams,nn,fc,C_res);

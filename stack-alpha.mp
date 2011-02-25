input boxes
beginfig(1);
prologues:=3;


%stack
boxjoin(a.nw=b.sw; a.ne=b.se);
boxit.stacka(btex $\alpha_0$ etex);
boxit.stackb(btex $\alpha_1$ etex);
boxit.stackc(btex $\alpha_2$ etex);
boxit.stackmid(btex $\vdots$ etex);
boxit.stacktop(btex $\alpha_n etex);

drawboxed(stacka, stackb, stackc, stackmid, stacktop);

label.bot(btex LRU modelled as stack $\alpha$ etex, stacka.s);

endfig;


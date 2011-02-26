input boxes
beginfig(1);
prologues:=3;


%stack
boxjoin(a.nw=b.sw; a.ne=b.se;);
boxit.stacka(btex $p_0$ etex);
boxit.stackb(btex $p_1$ etex);
boxit.stackc(btex $p_2$ etex);
boxit.stackmid(btex $\vdots$ etex);
boxit.stacktop(btex $p_m$ etex);

drawboxed(stacka, stackb, stackc, stackmid, stacktop);

drawarrow stacktop.c shifted(20, 0) -- stacka.c shifted(20, 0);
label(btex Increasing recency etex rotated 90, stacka.c shifted(30, 20));

endfig;

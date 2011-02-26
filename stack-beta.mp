input boxes
beginfig(1);
prologues:=3;

%colour
color pink;
pink:=(1, 4/5, 4/5);

%stack
boxjoin(a.nw=b.sw; a.ne=b.se;);
boxit.stacka(btex $p _0$ etex);
boxit.stackb(btex $p _1$ etex);
boxit.stackc(btex $p _2$ etex);
boxit.stackmid(btex $\vdots$ etex);
boxit.sbetaa(btex $q_ {\beta 0}$ etex);
boxit.smidbab(btex $\vdots$ etex);
boxit.sbetab(btex $q_ {\beta 1}$ etex);
boxit.sbetamid(btex $\vdots$ etex);
boxit.sbetac(btex $q_ {\beta 2}$ etex);
boxit.sbetamida(btex $\vdots$ etex);
boxit.sbetan(btex $q_{\beta n}$ etex);
boxit.sfinal(btex $\vdots$ etex);
boxit.stacktop(btex $p_m$ etex);

drawboxed(stacka, stackb, stackc, stackmid, sbetaa, smidbab);
drawboxed(sbetab, sbetamid, sbetac, sbetamida, sbetan, sfinal, stacktop);

drawarrow stacktop.c shifted(20, 0) -- stacka.c shifted(20, 0);

fill bpath sbetaa withcolor pink;
fill bpath sbetab withcolor pink;
fill bpath sbetac withcolor pink;
fill bpath sbetan withcolor pink;

draw pic(sbetaa) withcolor black;
draw pic(sbetab) withcolor black;
draw pic(sbetac) withcolor black;
draw pic(sbetan) withcolor black;



label(btex Increasing recency etex rotated 90, stacka.c shifted(30, 50));

endfig;

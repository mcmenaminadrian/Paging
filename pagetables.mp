input boxes
beginfig(1);
prologues:=3;

%some colours
color lightgrey;
lightgrey:=(4/5, 4/5, 4/5);
color midgrey;
midgrey:=(3/5, 3/5, 3/5);
color darkgrey;
darkgrey=(2/5, 2/5, 2/5);
color gloom;
gloom=(1/5, 1/5, 1/5);

%address
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.pgd(btex PGD index  etex);
boxit.pud(btex PUD index  etex);
boxit.pmd(btex PMD index  etex);
boxit.ptd(btex PTE index etex);
boxit.off(btex OFFSET     etex);
pgd.w - pud.w = (-100, 0);
pud.w - pmd.w = (-100, 0);
pmd.w - ptd.w = (-100, 0);
ptd.w - off.w = (-100, 0);
ptd.e - off.e = (-100, 0);


pgd.dy=10bp;
drawboxed(pgd, pud, pmd, ptd, off);
fill bpath pgd withcolor gloom;
fill bpath pud withcolor darkgrey;
fill bpath pmd withcolor midgrey;
fill bpath ptd withcolor lightgrey;

draw pic(pgd) withcolor white;
draw pic(pud) withcolor white;
draw pic(pmd) withcolor white;
draw pic(ptd) withcolor white;

%bits for x86
label.ulft(btex0etex, off.ne);
label.urt(btex11etex, off.nw);
label.ulft(btex12etex, ptd.ne);
label.urt(btex20etex, ptd.nw);
label.ulft(btex21etex, pmd.ne);
label.urt(btex29etex, pmd.nw);
label.ulft(btex30etex, pud.ne);
label.urt(btex38etex, pud.nw);
label.ulft(btex39etex, pgd.ne);
label.urt(btex47etex, pgd.nw);

label.bot(btex linear address etex, pmd.sw) withcolor blue;

boxjoin();
boxit.reg(btex register etex);
reg.nw - pgd.sw = (-20, -180);
drawboxed(reg);

boxjoin();
boxjoin(a.sw=b.nw; a.se=b.ne);
boxit.ga();
boxit.gb();
boxit.gc(btex $\vdots$ etex);
boxit.gd();
gd.sw-reg.e=(15, 0);
drawboxed(ga, gb, gc, gd);
fill bpath gb withcolor darkgrey;
drawarrow reg.e -- gd.sw;
drawarrow pgd.s{dir 270} .. {dir 0}gb.w withcolor red;
label.urt(btex page (global/upper/middle) directories etex, gc.e);

boxjoin();
boxjoin(a.sw=b.nw; a.se=b.ne);
boxit.ua();
boxit.ub();
boxit.uc(btex $\vdots$ etex);
boxit.ud();
ua.c-pud.c=(5, -120);
drawboxed(ua, ub, uc, ud);
fill bpath ud withcolor darkgrey;
drawarrow gb.e{dir 45} .. {dir 15}ud.sw;
drawarrow pud.s{dir 270} .. {dir 0}ud.w withcolor red;


boxjoin();
boxjoin(a.sw=b.nw; a.se=b.ne);
boxit.ma();
boxit.mb();
boxit.mc(btex $\vdots$ etex);
boxit.md();
ma.c-pmd.c=(5, -90);
drawboxed(ma, mb, mc, md);
fill bpath ma withcolor darkgrey;
drawarrow ud.e{dir 45} .. {dir 15}md.sw;
drawarrow pmd.s{dir 270} .. {dir 0}ma.w withcolor red;


boxjoin();
boxjoin(a.sw=b.nw; a.se=b.ne);
boxit.ta();
boxit.tb();
boxit.tc(btex $\vdots$ etex);
boxit.td();
ta.c-ptd.c=(5, -60);
drawboxed(ta, tb, tc, td);
fill bpath tb withcolor darkgrey;
drawarrow ma.e{dir 45} .. {dir 15}td.sw;
drawarrow ptd.s{dir 270} .. {dir 0}tb.w withcolor red;

boxjoin();
circleit.plus(btex + etex);
offset.s - plus.n = (0, -30);
plus.dx = 20bp;
plus.dy = 20bp;
drawboxed(plus);
fill bpath plus withcolor black;
draw pic(plus) withcolor white;

drawarrow offset.s -- plus.n withcolor red;

boxjoin();
boxjoin(a.sw=b.nw; a.se=b.se)
boxit.lina(btex $\texttt{0x001}$ etex);
boxit.linb(btex $\texttt{0x004)$ etex);
boxit.linc(btex $\texttt{0x008}$ etex);
boxit.lind(btex $\texttt{0x00A}$ etex);
boxit.line(btex $\vdots$ etex);
boxit.linf(btex $\texttt{0xFFC}$ etex);
lina.dx=10bp;

linc.w - plus.e = (20, 0);
drawboxed(lina, linb, linc, lind, line, linf); 

drawarrow tb.w{dir 45} .. {dir 15}linf.sw;
drawarrow plus.e -- linc.w withcolor red;

endfig;

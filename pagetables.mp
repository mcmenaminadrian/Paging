input boxes
beginfig(1);
prologues:=3;

%some colours
color lightgrey;
lightgrey:=(4/5, 4/5. 4/5);
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
boxit.tab(btex PAGE index etex);
boxit.off(btex OFFSET     etex);

pgd.dx=20bp;
pgd.dy=10bp;
drawboxed(pgd, pud, pmd, tab, off);
fill bpath pgd withcolor gloom;
fill bpath pud withcolor darkgrey;
fill bpath pmd withcolor midgrey;
fill bpath tab withcolor lightgrey;

draw pic(pgd) withcolor white;
draw pic(pud) withcolor white;
draw pic(pmd) withcolor white;
draw pic(tab) withcolor white;

endfig;

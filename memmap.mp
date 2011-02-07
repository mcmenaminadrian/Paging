input boxes
beginfig(1);
prologues:=3;

%physical memory
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.meg(btex ... etex);
boxit.main(btex kernel etex);
boxit.rest(btex free pages etex);
meg.dx=10bp;
main.dx=30bp;
main.dy=10bp;
rest.dx=70bp;
drawboxed(meg, main, rest);
label.top(btex Physical memory map etex, rest.n);
label.llft(btex 1 Meg etex, meg.se);

%virtual memory
boxit.app(btex application virtual memory etex);
boxit.ker(btex ... etex);
boxit.lker(btex kernel etex);
boxit.kers(btex kernel virtual memory etex);
app.dx = 120bp;
ker.dx = 10bp;
lker.dx = 30bp;
kers.dx = 40bp;
app.ne - meg.ne = (0, -200);
drawboxed(app, ker, lker, kers);
label.bot(btex PAGE_OFFSET etx, ker.sw);

drawarrow meg.sw .. ker.nw;

endfig;

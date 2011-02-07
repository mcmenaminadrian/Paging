input boxes
beginfig(1);
prologues:=3;

%physical memory
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.meg(btex 1 etex);
boxit.main(btex kernel etex);
boxit.rest(btex free pages etex);
meg.dx=10bp;
main.dx=30bp;
main.dy=10bp;
rest.dx=70bp;
drawboxed(meg, main, rest);
label.top(btex Physical memory map etex, rest.n);
label.llft(btex 1 Meg etex, meg.se);

boxjoin();
boxjoin(a.ne = b.nw; a.se=b.sw);
%virtual memory
boxit.app(btex application virtual memory etex);
boxit.ker(btex 1 etex);
boxit.lker(btex kernel etex);
boxit.kers(btex kernel virtual memory etex);
app.dx = 120bp;
ker.dx = 10bp;
lker.dx = 30bp;
kers.dx = 40bp;
app.dy = 10bp;
app.nw - meg.sw = (0bp, -75bp);
drawboxed(app, ker, lker, kers);
label.bot(btex PAGE\_OFFSET etex, ker.sw);

drawarrow meg.sw{dir 45} .. {dir 270}ker.nw;

endfig;

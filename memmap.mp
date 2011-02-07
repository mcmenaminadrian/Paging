input boxes
beginfig(1);
prologues:=3;

%colours
color grey;
grey:=(4/5, 4/5, 4/5);


%physical memory
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.meg(btex 1M etex);
boxit.main(btex kernel etex);
boxit.rest(btex free pages etex);
main.dx=30bp;
main.dy=10bp;
rest.dx=70bp;
drawboxed(meg, main, rest);
label.top(btex Physical memory map etex, rest.n);
fill bpath meg withcolor grey;
draw pic(meg) withcolor white;
fill bpath main withcolor black;
draw pic(main) withcolor white; 

boxjoin();
boxjoin(a.ne = b.nw; a.se=b.sw);
%virtual memory
boxit.app(btex application virtual memory etex);
boxit.ker(btex 1M etex);
boxit.lker(btex kernel etex);
boxit.kers(btex kernel virtual memory etex);
app.dx = 120bp;
lker.dx = 30bp;
kers.dx = 40bp;
app.dy = 10bp;
app.nw - meg.sw = (0bp, -95bp);
drawboxed(app, ker, lker, kers);
fill bpath ker withcolor grey;
draw pic(ker) withcolor white;
fill bpath lker withcolor black;
draw pic(lker) withcolor white;
label.bot(btex PAGE\_OFFSET etex, ker.sw);
label.top(btex Virtual memory map etex, app.n);

drawarrow meg.sw{dir 270} .. {dir 270}ker.nw;

endfig;

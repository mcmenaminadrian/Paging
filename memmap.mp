input boxes
beginfig(1);
prologues:=3;

%physical memory
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.meg(btex ... etex);
boxit.main(btex kernel etex);
boxit.rest(btex free pages etex);
main.dx=30bp;
main.dy=10bp;
rest.dx=70bp;
drawboxed(meg, main, rest);
label.top(btex Physical memory map etex, rest.n);

endfig;

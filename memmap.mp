input boxes
beginfig(1);
prologues:=3;

%physical memory
boxjoin(a.ne=b.nw; a.se=b.sw);
boxit.meg(btex ... etex);
boxit.main(btex Physical memory etex);
main.dx=100bp;
main.dy=10bp;
drawboxed(meg, main);

endfig;

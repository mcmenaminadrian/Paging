input boxes
beginfig(1);
prologues:=3;
outputformat := "eps";

%some colours
color lightgrey;
lightgrey:=(4/5, 4/5, 4/5);
color midgrey;
midgrey:=(3/5, 3/5, 3/5);
color darkgrey;
darkgrey=(2/5, 2/5, 2/5);
color gloom;
gloom=(1/5, 1/5, 1/5);

color azure;
azure:=(12/13, 1, 1);
color baby;
baby:=(12/13, 24/25, 1);
color lavender;
lavender=(23/26, 23/26, 49/50);
color ultra;
ultra=(8/13, 23/26, 12/13);
color ukraine;
ukraine=(66/255, 173/255, 222/255);
color turquoise;
turquoise=(0, 191/255, 1);

path northbridge, southbridge, memory, disk, buslinestart, buslineend, busline;

boxit.cpu1(btex CPU etex);
boxit.cpu2(btex CPU etex);
boxit.cpu3(btex CPU etex);
boxit.cpu4(btex CPU etex);

cpu1.nw = (0,0);
cpu2.nw = (100, 0);
cpu3.nw = (200, 0);
cpu4.nw = (300, 0);

boxit.northbridge(btex Northbridge etex);
boxit.memory(btex Main Memory etex);
boxit.southbridge(btex Southbridge etex);

northbridge.nw = (150, -50);
northbridge.se = (250, -150);
memory.nw = (0, -110);
memory.se = (70, -130);
southbridge.nw = (150, -200);
southbridge.se = (250, -300);



drawboxed(cpu1, cpu2, cpu3, cpu4);
drawboxed(northbridge, memory, southbridge);

fill bpath  northbridge withcolor lavender;
fill bpath cpu1 withcolor azure;
fill bpath cpu2 withcolor azure;
fill bpath cpu3 withcolor azure;
fill bpath cpu4 withcolor azure;

draw pic(cpu1) withcolor gloom;
draw pic(cpu2) withcolor gloom;
draw pic(cpu3) withcolor gloom;
draw pic(cpu4) withcolor gloom;

draw pic(northbridge) withcolor gloom;

fill bpath southbridge withcolor baby;
draw pic(southbridge) withcolor gloom;

buslinestart=cpu1.s shifted (0, -10);
buslineend=cpu4.s shifted (0, -10);
draw buslinestart--buslineend;
label.lrt(btex Front Side Bus etex, (12,-25));

draw cpu1.s -- buslinestart;
draw cpu2.s -- cpu2.s shifted (0, -10);
draw cpu3.s -- cpu3.s shifted (0, -10);
draw cpu4.s -- cpu4.s shifted (0, -10);

busline = buslinestart .. buslineend;

draw northbridge.n -- northbridge.n shifted (0, 30) cutafter busline;
draw northbridge.s -- southbridge.n;

draw memory.e -- memory.e shifted (100, 0) cutafter bpath northbridge;

draw (10, -210) -- (10, -250);
draw (30, -210) -- (30, -250);
draw (10, -210){dir 30}..{dir 330}(30, -210);
draw (10, -210){dir 330}..{dir 30}(30, -210);
draw (10, -250){dir 330}..{dir 30}(30, -250);
label(btex Disk etex rotated 90, (20, -235));

draw (30, -230) -- (200, -230) cutafter bpath southbridge;

endfig;

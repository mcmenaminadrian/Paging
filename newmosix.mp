input boxes;

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

boxit.node1(btex etex);
boxit.node2(btex etex);

boxit.linux1(btex Linux Process etex);
boxit.mosix1(btex Mosix Process etex);
boxit.linker1(btex Virtualisation Layer etex);
boxit.lower1(btex Linux kernel etex);

boxit.linker2(btex Virtualisation Layer etex);
boxit.lower2(btex Linux Kernel etex);

label.lrt(btex MOSIX v3 RPC Call, after Barak, 2011 etex, (50,-350));

node1.nw = (10, -10);
node1.se = (200, -300);

node2.nw = (250, -10);
node2.se = (440, -300);


linux1.nw = (20, -50);
linux1.se = (90, -100);
mosix1.nw = (100, -100);
mosix1.se = (170, -150);
linker1.nw = (10, -200);
linker1.se = (200, -225);
lower1.nw = (20, -240);
lower1.se = (190, -280);


linker2.nw = (250, -200);
linker2.se = (440, -225);
lower2.nw = (260, -240);
lower2.se = (430, -280);

drawboxed(node1, node2);

drawboxed(linux1, mosix1, linker1, linker2, lower1, lower2);

fill bpath linux1 withcolor lightgrey;

fill bpath mosix1 withcolor midgrey;

fill bpath linker1 withcolor lavender;
fill bpath linker2 withcolor lavender;

fill bpath lower1 withcolor darkgrey;
fill bpath lower2 withcolor darkgrey;

draw pic(linux1) withcolor black;
draw pic(mosix1) withcolor black;
draw pic(linker1) withcolor black;
draw pic(lower1) withcolor white;


draw pic(linker2) withcolor black;
draw pic(lower2) withcolor white;

label.urt(btex NODE 1 etex, (10, -5));
label.urt(btex NODE 2 etex, (250, -5));

drawarrow (65, -90) .. (80, -250) withcolor ukraine;

drawarrow (135, -140) .. (140, -210) -- (260, -210 ) .. (270, -270) withcolor (0.5, 0, 0);
label.urt(btex RPC etex, (210, -210));
endfig;

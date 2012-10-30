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

boxit.user1(btex User Process etex);
boxit.upper1(btex Upper Kernel etex);
boxit.linker1(btex Linker etex);
boxit.lower1(btex Lower Kernel etex);

boxit.user2(btex User Process etex);
boxit.upper2(btex Upper Kernel etex);
boxit.linker2(btex Linker etex);
boxit.lower2(btex Lower Kernel etex);

label.lrt(btex MOSIX RPC Call, after Barak et al., 1991 etex, (50,-250));

user1.nw = (50, -50);
user1.se = (125, -100);
upper1.nw = (50, -100);
upper1.se = (125, -150);
linker1.nw = (50, -150);
linker1.se = (125, -175);
lower1.nw = (50, -175);
lower1.se = (125, -225);

user2.nw = (250, -50);
user2.se = (325, -100);
upper2.nw = (250, -100);
upper2.se = (325, -150);
linker2.nw = (250, -150);
linker2.se = (325, -175);
lower2.nw = (250, -175);
lower2.se = (325, -225);

drawboxed(user1, user2, upper1, upper2, linker1, linker2, lower1, lower2);

fill bpath user1 withcolor lightgrey;
fill bpath user2 withcolor lightgrey;

fill bpath upper1 withcolor midgrey;
fill bpath upper2 withcolor midgrey;

fill bpath linker1 withcolor lavender;
fill bpath linker2 withcolor lavender;

fill bpath lower1 withcolor darkgrey;
fill bpath lower2 withcolor darkgrey;

draw pic(user1) withcolor black;
draw pic(upper1) withcolor black;
draw pic(linker1) withcolor black;
draw pic(lower1) withcolor white;


draw pic(user2) withcolor black;
draw pic(upper2) withcolor black;
draw pic(linker2) withcolor black;
draw pic(lower2) withcolor white;

label.urt(btex NODE 1 etex, (50, -40));
label.urt(btex NODE 2 etex, (250, -40));

drawarrow (88, -90) -- (88, -155) .. (287, -169 ) -- (287, -185) withcolor (0.5, 0, 0);
label.urt(btex RPC etex, (180, -160));
endfig;

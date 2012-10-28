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

boxit.cpu(btex CORE etex);
boxit.cache(btex  L2 etex);

cpu.nw = (100, -50);
cpu.ne = (150, -50);
cpu.sw = (100, -200);
cpu.se = (150, -200);

cache.nw = (300, -125);
cache.ne = (350, -125);
cache.sw = (300, -175);
cache.se = (350, -175);

drawboxed(cpu, cache);

fill bpath cache withcolor black;
label.lrt(btex L2 CACHE etex, (300, -177));

drawarrow (150, -150) -- cache.w;
label.urt(btex 64Kb local memory etex, (200, -147));
label.lrt(btex 8 cycles etex, (200, -153));

drawarrow (150, -70) -- (400, -70) withcolor (midgrey);
label.urt (btex 4Mb global memory etex, (200, -67));
label.lrt (btex 35 - 49 cycles etex, (200, -73));

drawarrow(150, -100) -- (500, -100) withcolor (lightgrey);
label.urt(btex 4 Gb global memory etex, (350, -97));
label.lrt(btex 69 - 88 cycles etex, (350, -103));

label.lrt(btex TILERA 64 NUMA-LIKE MEMORY etex, (100, 0));
label.lrt(btex (Ignores L1 cache, based on Table 1, Ungar and Adams, 2009) etex, (100, -10));

endfig;

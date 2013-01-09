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


label.lrt(btex Ripple fundamental parallelism etex, (50,-550));

boxit.file(btex FILE etex);
boxit.block(btex BLOCK etex);
boxit.initialhorizontal(btex INITIAL\ HORIZONTAL\ WIDTH etex);
boxit.subfilewidth4();
boxit.subfilewidth1a();
boxit.subfilewidth2a();
boxit.subfilewidth3a();
boxit.subfilewidth4a();

boxit.horizontalgap1(btex HORIZONTAL\ GAP etex);
boxit.horizontalgap2();
boxit.horizontalgap3();
boxit.horizontalgap4();
boxit.horizontalgap1a();
boxit.horizontalgap2a();
boxit.horizontalgap3a();
boxit.horizontalgap4a();

boxit.verticalgap1(btex VERTICAL\ GAP etex);

file.nw = (50, -50);
file.se = (450, -500);

block.nw = (52, -52);
block.se = (54, -58);

initialhorizontal.nw = (51, -51);
initialhorizontal.se = (449, -59);

for j=0 upto 3:
  for i = 0 upto 4:
	boxit.subfilewidthaa[i][j]();
	boxit.subfilewidthbb[i][j]();
	boxit.subfilewidthcc[i][j]();
	boxit.subfilewidthdd[i][j]();

	boxit.gapaa[i][j]();
	boxit.gapbb[i][j]();
	boxit.gapcc[i][j]();
	boxit.gapdd[i][j]();

	subfilewidthaa[i][j].nw = (51, (-60 - (i * 10) - 1) - j * 100);
	subfilewidthaa[i][j].se = (124, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(subfilewidthaa[i][j]);
	fill bpath subfilewidthaa[i][j] withcolor lightgrey;
	
	gapaa[i][j].nw = (126, (-60 - (i * 10) - 1) - j * 100);
	gapaa[i][j].se = (149, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(gapaa[i][j]);


	subfilewidthbb[i][j].nw = (151, (-60 - (i * 10) - 1) - j * 100);
	subfilewidthbb[i][j].se = (224, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(subfilewidthbb[i][j]);
	fill bpath subfilewidthbb[i][j] withcolor lightgrey;
	
	gapbb[i][j].nw = (226, (-60 - (i * 10) - 1) - j * 100);
	gapbb[i][j].se = (249, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(gapbb[i][j]);

	subfilewidthcc[i][j].nw = (251, (-60 - (i * 10) - 1) - j * 100);
	subfilewidthcc[i][j].se = (324, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(subfilewidthcc[i][j]);
	fill bpath subfilewidthcc[i][j] withcolor lightgrey;
	
	
	gapcc[i][j].nw = (326, (-60 - (i * 10) - 1) - j * 100);
	gapcc[i][j].se = (349, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(gapcc[i][j]);


	subfilewidthdd[i][j].nw = (351, (-60 - (i * 10) - 1) - j * 100);
	subfilewidthdd[i][j].se = (424, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(subfilewidthdd[i][j]);
	fill bpath subfilewidthdd[i][j] withcolor lightgrey;
	
	
	gapdd[i][j].nw = (426, (-60 - (i * 10) - 1) - j * 100);
	gapdd[i][j].se = (449, (-70 - (i * 10) + 1) - j * 100);
	drawboxed(gapdd[i][j]);

  endfor
endfor


verticalgap1.nw = (51, -211);
verticalgap1.se = (449, -259);



drawboxed(file, block, initialhorizontal);
drawboxed(verticalgap1);
fill bpath verticalgap1 withcolor azure;
draw pic(verticalgap1) withcolor black;

fill bpath block withcolor lavender;


for tt=0 upto 14:
 boxit.m[tt]();
 m[tt].nw = (50 + (tt*5) + 1, -102);
 m[tt].se = (55 + (tt*5) - 1, -108);
 drawboxed(m[tt]);
 fill bpath m[tt] withcolor lavender;
endfor


endfig;

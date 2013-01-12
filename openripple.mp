input boxes;
outputtemplate := "%j.eps";
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


label.lrt(btex Opening a Ripple file etex, (50,-315));
label.lrt(btex Hin = 3, Vin = 2, Hrep = 1, Vrep = 2 etex, (50, -330));
label.lrt(btex Lavender RUNLENGTHs in first subfile etex, (50, -345));


boxit.file(btex FILE etex);

file.nw = (50, -50);
file.se = (450, -300);

for i= 0 upto 8:
  	for j = 0 upto 3:
		boxit.subfilewidthaa[i][j]();
		boxit.subfilewidthbb[i][j]();

		subfilewidthaa[i][j].nw = (52 + j * 100, -52 - i * 25);
		subfilewidthaa[i][j].se = (98 + j * 100, -73 - i * 25);
		subfilewidthbb[i][j].nw = (102 + j * 100, -52 - i * 25);
		subfilewidthbb[i][j].se = (148 + j * 100, -73 - i * 25);
			
		drawboxed(subfilewidthaa[i][j]);
		drawboxed(subfilewidthbb[i][j]);
		if ((i > 1) and (i < 4)) or ((i > 5) and (i < 8)) or ((i > 9) and (i < 12)):
			fill bpath subfilewidthaa[i][j] withcolor (.8 - (j * .2), .8 - (j * .2), .8 - (0.2 * j));
			fill bpath subfilewidthbb[i][j] withcolor (.8 - (j * .2), .8 - (j * .2), .8 - (0.2 * j));
		else:
			fill bpath subfilewidthaa[i][j] withcolor lavender;
			fill bpath subfilewidthbb[i][j] withcolor lavender;
		fi;
	endfor
endfor


drawboxed(file);

endfig;

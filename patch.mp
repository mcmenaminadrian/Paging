
beginfig(1);
prologues:=3;

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


%free, active unref, active ref, inactive unref
%inactive ref, dirty, clean
path au, ar, iu, ir;


%Lifecycle of a Linux page


au := fullcircle scaled 100 shifted(-200, -200);
fill au withcolor baby;
draw au;
label(btex ACTIVE UNREF etex, (-200, -200));
drawarrow(-200, -350) .. (-200, -250);

ar := fullcircle scaled 100 shifted(-200, -400);
fill ar withcolor azure;
draw ar;
label(btex ACTIVE REF etex, (-200, -400));

iu := fullcircle scaled 100 shifted(200, -200);
fill iu withcolor lavender;
draw iu;
label(btex INACTIVE UNREF etex, (200, -200));
drawarrow(200, -350) .. (200, -250);

ir := fullcircle scaled 100 shifted(200, -400);
fill ir withcolor ultra;
draw ir;
label(btex INACTIVE REF etex, (200, -400));

%between active unref and inactive unref
drawarrow(-200, -200) .. (200, -200) cutbefore au cutafter iu;


endfig;

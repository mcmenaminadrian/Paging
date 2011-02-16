input boxes
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


%free, active unref, active ref, inactive unref
%inactive ref, dirty, clean
path f, au, ar, iu, ir, d, c;


%Lifecycle of a Linux page

f := fullcircle scaled(100);
fill f withcolor lightgrey;
draw f;


au := fullcircle scaled 100 shifted(-200, -200);
fill au withcolor baby;
draw au;

ar := fullcircle scaled 100 shifted(-200, -400);
fill ar withcolor azure;
draw ar;

iu := fullcircle scaled 100 shifted(200, -200);
fill iu withcolor lavender;
draw iu;

ir := fullcircle scaled 100 shifted(200, -400);
fill ir withcolor ultra;
draw ir;

d := fullcircle scaled 100 shifted(350, -450);
fill d withcolor darkgrey;
draw d;

c := fullcircle scaled 100 shifted(500, -300);
fill c withcolor midgrey;
draw au;


endfig;

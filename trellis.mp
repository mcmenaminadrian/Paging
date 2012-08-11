
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
path hm, ht, hw, fm, ft, fw;


%Lifecycle of a Linux page

hm := fullcircle scaled(100) shifted (100, -100);
fill hm withcolor lightgrey;
draw hm;
label(btex HEALTHY etex, (100, -100));

ht := fullcircle scaled(100) shifted(300, -100);
fill ht withcolor midgrey;
draw ht;
label(btex HEALTHY etex, (300, -100));

hw := fullcircle scaled(100) shifted(500, -100);
fill hw withcolor darkgrey;
draw hw;
label(btex HEALTHY etex, (500, -100));


fm := fullcircle scaled 100 shifted(100, -300);
fill fm withcolor baby;
draw fm;
label(btex FEVER etex, (100, -300));

ft := fullcircle scaled 100 shifted(300, -300);
fill ft withcolor lavender;
draw ft;
label(btex FEVER etex, (300, -300));

fw := fullcircle scaled 100 shifted(500, -300);
fill fw withcolor turquoise;
draw fw;
label(btex FEVER etex, (500, -300));

%arrows from free to the unreferenced states
drawarrow(100, -100) .. (300, -100) cutbefore hm cutafter ht;
drawarrow(100, -100) .. (300, -300) cutbefore hm cutafter ft;
drawarrow(300, -100) .. (500, -100) cutbefore ht cutafter hw;
drawarrow(300, -100) .. (500, -300) cutbefore ht cutafter fw;

drawarrow(100, -300) .. (300, -300) cutbefore fm cutafter ft;
drawarrow(100, -300) .. (300, -100) cutbefore fm cutafter ht;
drawarrow(300, -300) .. (500, -300) cutbefore ft cutafter fw;
drawarrow(300, -300) .. (500, -100) cutbefore ft cutafter hw;

drawarrow(0, -100) .. (100, -100) cutafter hm;
drawarrow(0, -300) .. (100, -300) cutafter fm; 

%scores
label(btex 0.6x0.5 etex, (10, -90));
label(btex 0.4x0.1 etex, (10, -290));

label(btex NORMAL etex, (100, -200));
label(btex COLD etex, (300, -200));
label(btex DIZZY etex, (500, -200));

label(btex 0.7x0.4 etex, (200, -90));
label(btex 0.7x0.1 etex, (400, -90));

label(btex 0.6x0.5 etex, (200, -290));
label(btex 0.6x0.6 etex, (400, -290));

label(btex 0.4x0.4 etex rotated 45, (175, -215));
label(btex 0.4x0.1 etex rotated 45, (375, -215));


label(btex 0.3x0.3 etex rotated -45, (175, -165));
label(btex 0.3x0.6 etex rotated -45, (375, -165));

endfig;
end

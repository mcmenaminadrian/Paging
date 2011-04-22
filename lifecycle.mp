
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
path f, au, ar, iu, ir, d, c;


%Lifecycle of a Linux page

f := fullcircle scaled(100);
fill f withcolor lightgrey;
draw f;
label(btex FREE etex, (0, 0));
label (btex lru\_cache\_add\_lru etex, (50, -100));
label (btex lru\_cache\_add\_lru etex, (-150, -100)); 

au := fullcircle scaled 100 shifted(-200, -200);
fill au withcolor baby;
draw au;
label(btex ACTIVE UNREF etex, (-200, -200));
drawarrow(-200, -250) .. (-200, -350);

ar := fullcircle scaled 100 shifted(-200, -400);
fill ar withcolor azure;
draw ar;
label(btex ACTIVE REF etex, (-200, -400));

iu := fullcircle scaled 100 shifted(200, -200);
fill iu withcolor lavender;
draw iu;
label(btex INACTIVE UNREF etex, (200, -200));
drawarrow(200, -250) .. (200, -350);

ir := fullcircle scaled 100 shifted(200, -400);
fill ir withcolor ultra;
draw ir;
label(btex INACTIVE REF etex, (200, -400));

d := fullcircle scaled 100 shifted(400, -400);
fill d withcolor ukraine;
draw d;
label(btex DIRTY etex, (400, -400));

c := fullcircle scaled 100 shifted(400, -200);
fill c withcolor turquoise;
draw c;
label(btex CLEAN etex, (400, -200));

%arrows from free to the unreferenced states
drawarrow(0, 0) .. (-200, -200) cutbefore f cutafter au;
drawarrow(0, 0) .. (200, -200) cutbefore f cutafter iu;

%between inactive ref and active unref
drawarrow(200, -400) .. (-200, -200) cutbefore ir cutafter au;

%between active unref and inactive unref
drawarrow(-200, -200) .. (200, -200) cutbefore au cutafter iu;
label(btex shrink\_active\_list etex, (0, -210));

%arrows inactiveunref to free and dirty
drawarrow(200, -200) .. (400, -400) cutbefore iu cutafter d;
drawarrow(200, -200){dir 45} .. {dir 180}(0, 0) cutbefore iu cutafter f;
label(btex shrink\_inactive\_list etex, (300, -240));
label(btex shrink\_inactive\_list etex, (290, -140));

%dirty to clean, clean to free
drawarrow(400, -400) .. (400, -200) cutbefore d cutafter c; 
drawarrow(400, -200){dir 95} .. {dir 220}(0, 0) cutbefore c cutafter f;
label(btex pageout etex, (420, -300));
label(btex pageout etex, (410, -140));

%active ref loop
drawarrow(-200, -400){dir 120} .. {dir 40}(-200, -200) cutbefore ar cutafter au;
label(btex shrink\_active\_list etex, (-280, -300));
drawarrow(-200, -400) .. (-300, -400) .. (-200, -400) cutbefore ar cutafter ar;

%mark_page_accessed labels
label(btex mark\_page\_accessed etex, (70, -300));
label(btex mark\_page\_accessed etex, (-150, -300));
label(btex mark\_page\_accessed etex, (150, -260));
label(btex mark\_page\_accessed etex, (-275, -345));

%page refed between ir and iu
drawarrow(200, -400){dir 60} .. (200, - 200) cutbefore ir cutafter iu;
label(btex shrink\_inactive\_list etex, (260, -330));

%page

endfig;


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

label(btex $f(10,(5,2,1))$ etex);
drawarrow(-20,-10)..(-100,-40);
drawarrow(20,-10) .. (100,-40);

%first level
label(btex $f(10,(2,1))$ etex, (-110, -50));
drawarrow(-120,-60) .. (-200,-100);
drawarrow(-110,-60) .. (-80,-100);

label(btex $f(5,(5,2,1))$ etex (110, -50));
drawarrow(120, -60) .. (150,-100);
drawarrow(110, -60) .. (80,-100);

%second level
label(btex $f(10,1)$ etex, (-200,-110)) withcolor turquoise;
label(btex $f(8,(2,1))$ etex, (-80,-110));
drawarrow(-85,-115) .. (-150,-160);
drawarrow(-75,-115) .. (-40,-160);

label(btex $f(5,(2,1))$ etex, (80,-110));
label(btex $f(0,(5,2,1))$ etex, (150,-110)) withcolor red;
drawarrow(85,-115) .. (140,-160);
drawarrow(75,-115) .. (40,-160);

%third level
label(btex $f(8,1)$ etex, (-150,-170)) withcolor turquoise;
label(btex $f(6,(2,1))$ etex, (-40,-170));
drawarrow(-45,-175) .. (-100,-230);
drawarrow(-35,-175) .. (0,-230);

label(btex $f(5,1)$ etex, (40,-170)) withcolor turquoise;
label(btex $f(3,(2,1))$ etex, (150,-170));
drawarrow(145, -175) .. (110, -230);
drawarrow(155, -175) .. (175, -230);

%fourth level
label(btex $f(6,1)$ etex, (-100,-235)) withcolor turquoise;
label(btex $f(4,(2,1))$ etex, (0,-235));
drawarrow(-5, -240) .. (-50,-270);
drawarrow(5, -240) .. (35,-270);


label(btex $f(3,1)$ etex, (110, -235)) withcolor turquoise;
label(btex $f(1,1)$ etex, (175, -235)) withcolor turquoise;

%fifth level
label(btex $f(4,1)$ etex, (-50,-275)) withcolor turquoise;
label(btex $f(2,(2,1))$ etex, (35,-275));
drawarrow(30,-280) .. (0,-310);
drawarrow(40,-280) .. (70,-310);
%sixth level
label(btex $f(2,1)$ etex, (0,-315)) withcolor turquoise;
label(btex $f(0,1)$ etex, (70,-315)) withcolor red;


endfig;



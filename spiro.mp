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

path f, au, ar, iu, ir, d, c;

f := fullcircle scaled 200 shifted (0, 0);


drawarrow(100,0)..(99.4091859003,0.0247561001) withcolor (1/12, 0, 0);
drawarrow(97.6530147458,0.1968787002) .. (94.7797419422,0.6579287195) withcolor (2/12, 0, 0);
drawarrow(90.8679527702,1.5380638891) .. (86.0238700294,2.9508497187) withcolor (3/12, 0, 0);
drawarrow(80.3777187307,4.9886651397) .. (74.0792761141,7.7188678392)withcolor (4/12, 0, 0);
drawarrow(67.2927639915,11.1808573469) .. (60.1912635735,15.3841420906) withcolor (5/12, 0, 0);
drawarrow(52.9508497187,20.3074810146) .. (45.7446513556,25.8991322301) withcolor (6/12, 0, 0);
drawarrow(38.7370473129,32.0782018753) .. (32.0782018753,38.7370473129) withcolor (7/12, 0, 0);

draw fullcircle scaled 50 shifted(75,	0) withcolor (0, 0, 1/14);
draw fullcircle scaled 50 shifted(74.8520046321,	4.7092889647) withcolor (0, 0, 2/14);
draw fullcircle scaled 50 shifted(74.4086025986,	9.3999925173) withcolor (0, 0, 3/14);
draw fullcircle scaled 50 shifted(73.6715438047,	14.0535985939) withcolor (0, 0, 4/14);
draw fullcircle scaled 50 shifted(72.6437370846,	18.6517415374) withcolor (0, 0, 5/14);
draw fullcircle scaled 50 shifted(71.3292387221,	23.1762745781) withcolor (0, 0, 6/14);
draw fullcircle scaled 50 shifted(69.7332364416,	27.6093414514) withcolor (0, 0, 7/14);
draw fullcircle scaled 50 shifted(67.862028935,	31.9334468674) withcolor (0,0, 8/14);
draw fullcircle scaled 50 shifted(65.7230010033,	36.1315255576) withcolor (0, 0, 9/14);
draw fullcircle scaled 50 shifted(63.3245944127,	40.1870096234) withcolor (0, 0, 10/14);
draw fullcircle scaled 50 shifted(60.6762745781,	44.0838939219) withcolor (0, 0, 11/14);
draw fullcircle scaled 50 shifted(57.7884932082,	47.8067992312) withcolor (0, 0, 12/14);
draw fullcircle scaled 50 shifted(54.6726470566,	51.3410329447) withcolor (0, 0, 13/14);
draw fullcircle scaled 50 shifted(51.3410329447,	54.6726470566) withcolor (0, 0, 14/14);




draw f withcolor midgrey;
endfig;

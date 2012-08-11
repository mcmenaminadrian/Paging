
beginfig(1);
prologues:=3;

%some colours
color lightgrey;
lightgrey:=(4/5, 4/5, 4/5);

%big wheel start, big wheel finish, small wheel start, small wheel finish
path bws, bwf, sws, swf;


%Aristotle's wheel paradox

bws := fullcircle scaled(200) shifted (100, -100);
draw bws;
label(btex A etex, (100, -190));

sws := fullcircle scaled(50) shifted(100, -100);
fill sws withcolor lightgrey;
draw sws;
label(btex C etex, (100, -110));

bwf := fullcircle scaled(200) shifted(500, -100);
draw bwf;
label(btex B etex, (500, -190));


swf := fullcircle scaled(50) shifted(500, -100);
fill swf withcolor lightgrey;
draw swf;
label(btex D etex, (500, -110));

%arrows from free to the unreferenced states
draw(90, -200) .. (510, -200);
draw(90, -125) .. (510, -125);

endfig;
end

input latexmp;
setupLaTeXMP(preamblefile="mypreamble");
input textpath;
filenametemplate "%j-%c.mps";
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

path hardware, virtlayer, kernel, user;
path hardwareL, virtlayerL, kernelL, userL;

hardware = fullcircle scaled 100;
virtlayer = fullcircle scaled 250;
kernel = fullcircle scaled 200;
user = fullcircle scaled 350;

hardwareL := reverse fullcircle scaled 75 rotated 180;
virtlayerL := reverse fullcircle scaled 225 rotated 165;
kernelL :=  reverse fullcircle scaled 175 rotated 160; 
userL := reverse fullcircle scaled 325 rotated 160;

fill virtlayer withcolor lavender;


draw user;
fill user withcolor midgrey;
draw virtlayer;
fill virtlayer withcolor lavender;
draw kernel;
fill kernel withcolor lightgrey;
draw hardware;
fill hardware withcolor white;


draw textpath("Virtualisation", virtlayerL, 0);
draw textpath("Hardware", hardwareL, 0);
draw textpath("Kernel", kernelL, 0);
draw textpath("Userspace", userL, 0);

label.urt(btex Kernel virtualisation etex, (-200,-200));

endfig;
end;

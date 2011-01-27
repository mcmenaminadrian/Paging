input boxes
beginfig(1);
prologues:=3;

%application 1 pages
boxjoin(a.sw=b.nw);
boxit.on("1"); boxit.tw("2"); boxit.tr("3"); boxit.fr("4");
boxit.fv("5"); boxit.sx("6"); boxit.sv("7"); boxit.ei("8");
drawboxed(on,tw,tr,fr,fv,sx,sv,ei);
label.lft("Application 1:", tr.w) withcolor blue;

%page frames
boxjoin(a.ne=b.nw);
boxit.one("0x01"); boxit.two("0x02"); boxit.three("0x03"); boxit.four("0x04");
boxit.five("0x05"); boxit.six("0x06"); boxit.seven("0x07"); boxit.eight("0x08");
boxit.nine("0x09"); boxit.ten("0x0a");
on.c - one.c = (-100, 50);
drawboxed(one,two,three,four,five,six,seven,eight, nine, ten); 
label.bot("System page frames", three.s) withcolor red;

%app1 page table
boxjoin(a.sw = b.nw);
%interim defaultdy:=2bp;
%interim defaultdx:=2bp;
boxit.pta(); boxit.ptb(); boxit.ptc(); boxit.ptd();
boxit.pte(); boxit.ptf(); boxit.ptg(); boxit.pth();
on.c - pta.c = (-40, 0);
drawboxed(pta, ptb, ptc, ptd, pte, ptf, ptg, pth);
label.bot("Page Table", pth.s);

%application 2 pages
boxjoin(a.sw=b.nw);
boxit.ron("1"); boxit.rtw("2"); boxit.rtr("3"); boxit.rfr("4");
boxit.rfv("5"); boxit.rsx("6"); boxit.rsv("7");
ron.nw - pth.nw = (350, -50);
drawboxed(ron, rtw,rtr, rfr, rfv, rsx, rsv);
label.bot("Application 2", rsv.s) withcolor green;

%application 2 page table
boxjoin(a.ne = b.nw)
boxit.rpta(); boxit.rptb(); boxit.rptc(); boxit.rptd();
boxit.rpte(); boxit.rptf(); boxit.rptg();
ron.ne - rpta.ne = (125, -10);
drawboxed(rpta, rptb, rptc, rptd, rpte, rptf, rptg);
label.lft("Page table", rpta.w);

drawarrow rtw.w{down} .. rptb.s;
drawarrow rptb.n .. four.s;
fill bpath rtw withcolor green;
fill bpath four withcolor green;
draw pic(rtw) withcolor white;
draw pic(four) withcolor white;

drawarrow rsv.w{down} .. rptg.s;
drawarrow rptg.n .. eight.s;
fill bpath rsv withcolor green;
fill bpath eight withcolor green;
draw pic(rsv) withcolor white;
draw pic(eight) withcolor white;

drawarrow rtr.w{down} .. rptc.s;
drawarrow rptc.n .. two.s;
fill bpath rtr withcolor green;
fill bpath two withcolor green;
draw pic(rtr) withcolor white;
draw pic(two) withcolor white;


drawarrow on.e{dir 7} .. pta.w;
drawarrow pta.e{dir 7} .. six.n;
fill bpath on withcolor blue;
fill bpath six withcolor blue;
draw pic(on) withcolor white;
draw pic(six) withcolor white;

drawarrow ei.e{dir 45} .. pth.w;
drawarrow pth.e{dir 45} .. five.n;
fill bpath ei withcolor blue;
fill bpath five withcolor blue;
draw pic(ei) withcolor white;
draw pic(five) withcolor white;

drawarrow tr.e{dir 14} .. ptc.w;
drawarrow ptc.e{dir 14} .. seven.n;
fill bpath tr withcolor blue;
fill bpath seven withcolor blue;
draw pic(tr) withcolor white;
draw pic(seven) withcolor white;

drawarrow sv.e{dir 65} .. ptg.w;
drawarrow ptg.e{dir 65} .. one.n;
fill bpath sv withcolor blue;
fill bpath one withcolor blue;
draw pic(sv) withcolor white;
draw pic(one) withcolor white;

endfig;


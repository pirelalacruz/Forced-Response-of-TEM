*version 9.2 1559400186
u 70
PM? 6
G? 2
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 25ms
+1 10s
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 4904 
@status
n 0 121:11:30:18:35:21;1640885721 e 
s 2832 122:04:17:23:12:41;1652821961 e 
*page 1 0 1520 970 iB
@ports
port 60 GND_EARTH 300 350 h
port 61 GND_ANALOG 560 350 h
@parts
part 49 PARAM 560 140 h
a 0 u 13 0 50 42 hlb 100 VALUE3=3.02
a 0 u 13 0 0 30 hln 100 NAME2=Ccontact
a 0 u 13 0 0 20 hln 100 NAME1=Cth1
a 0 u 13 0 0 40 hln 100 NAME3=Cte1
a 0 u 13 0 50 22 hlb 100 VALUE1=0.35
a 0 u 13 0 50 32 hlb 100 VALUE2=5.34
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
part 50 PARAM 380 190 h
a 0 u 13 0 50 42 hlb 100 VALUE3=0.375
a 0 u 13 0 0 30 hln 100 NAME2=Rcontact
a 0 u 13 0 0 20 hln 100 NAME1=Rth1
a 0 u 13 0 0 40 hln 100 NAME3=Rte1
a 0 u 13 0 50 32 hlb 100 VALUE2=0.25
a 0 u 13 0 50 22 hlb 100 VALUE1=1.5
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM2
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM2
part 51 PARAM 470 140 h
a 0 u 13 0 0 30 hln 100 NAME2=Tc
a 0 u 13 0 0 40 hln 100 NAME3=A
a 0 u 13 0 50 42 hlb 100 VALUE3=0.0532
a 0 u 13 0 50 22 hlb 100 VALUE1=355
a 0 u 13 0 50 32 hlb 100 VALUE2=285
a 0 u 13 0 0 20 hln 100 NAME1=Th
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM3
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM3
part 52 G 390 300 u
a 0 s 11 0 10 34 hln 100 PART=G
a 1 ap 9 0 10 4 hln 100 REFDES=G1
a 0 u 0 0 0 10 hln 100 GAIN=12.175
a 0 a 0:13 0 0 0 hln 100 PKGREF=G1
part 53 R 470 280 d
a 0 xp 9 0 11 2 hln 100 REFDES=Rm1
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rm1
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 23 1 hln 100 VALUE={Rm}
part 54 PARAM 470 190 h
a 0 u 13 0 0 40 hln 100 NAME3=Vsource
a 0 u 13 0 50 22 hlb 100 VALUE1=19.624
a 0 u 13 0 50 42 hlb 100 VALUE3=15.9
a 0 u 13 0 0 30 hln 100 NAME2=VA
a 0 u 13 0 50 32 hlb 100 VALUE2=3.724
a 0 u 13 0 0 20 hln 100 NAME1=Vtotal
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM4
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM4
part 59 Sw_tClose 520 250 H
a 0 sp 0 0 0 24 hln 100 PART=Sw_tClose
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=U1
a 0 xp 9 0 0 20 hln 100 REFDES=U1
part 58 PARAM 380 140 h
a 0 u 13 0 44 34 hlb 100 VALUE2=1.609
a 0 u 13 0 50 22 hlb 100 VALUE1=300
a 0 u 13 0 0 40 hln 100 NAME3=Rm
a 0 u 13 0 0 20 hln 100 NAME1=T_amb
a 0 u 13 0 0 30 hln 100 NAME2=RL
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM5
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM5
a 0 u 13 0 44 42 hlb 100 VALUE3=1.609
part 56 R 300 320 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rte
a 0 xp 9 0 15 42 hln 100 REFDES=Rte
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 -1 41 hln 100 VALUE={Rte1}
part 55 c 250 290 d
a 0 u 13 0 33 1 hln 100 VALUE={Cte1}
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=Cte
a 0 xp 9 0 17 -2 hln 100 REFDES=Cte
part 57 VSRC 560 280 H
a 1 u 0 0 0 0 hcn 100 AC=0
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vsource
a 1 u 13 0 -24 36 hcn 100 DC={Vsource}
a 1 xp 9 0 -22 26 hcn 100 REFDES=Vsource
part 1 titleblk 1520 970 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=B
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 66 vdiffMarker 250 320 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=1
part 67 vdiffMarker 250 290 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 13 0 16 14 hlb 100 NODE=-
a 0 a 0 0 6 20 hlb 100 LABEL=1
@conn
w 3
a 0 up 0:33 0 0 0 hln 100 V=
s 390 290 390 250 2
s 390 250 470 250 6
a 0 up 33 0 430 249 hct 100 V=
s 470 250 480 250 10
s 470 250 470 280 8
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 350 300 350 350 21
s 300 350 350 350 23
s 300 350 300 320 25
s 250 350 300 350 27
a 0 up 33 0 435 349 hct 100 V=
s 250 350 250 320 29
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 350 250 300 250 11
s 350 250 350 290 13
s 300 280 300 250 15
s 300 250 250 250 17
a 0 up 33 0 275 249 hct 100 V=
s 250 250 250 290 19
a 0 up 33 0 252 270 hlt 100 V=
w 36
a 0 up 0:33 0 0 0 hln 100 V=
s 560 360 560 350 41
s 390 300 390 350 39
s 560 350 560 320 45
s 390 350 470 350 43
a 0 up 33 0 530 349 hct 100 V=
s 470 350 560 350 48
a 0 up 33 0 515 349 hct 100 V=
s 470 320 470 350 46
w 32
a 0 up 0:33 0 0 0 hln 100 V=
s 520 250 560 250 31
a 0 up 33 0 550 249 hct 100 V=
s 560 280 560 250 33
@junction
j 470 250
+ w 3
+ w 3
j 300 250
+ w 12
+ w 12
j 300 350
+ w 22
+ w 22
j 560 350
+ w 36
+ w 36
j 470 350
+ w 36
+ w 36
j 390 290
+ p 52 2
+ w 3
j 350 290
+ p 52 4
+ w 12
j 350 300
+ p 52 3
+ w 22
j 390 300
+ p 52 1
+ w 36
j 470 280
+ p 53 1
+ w 3
j 470 320
+ p 53 2
+ w 36
j 250 290
+ p 55 1
+ w 12
j 250 320
+ p 55 2
+ w 22
j 300 280
+ p 56 2
+ w 12
j 300 320
+ p 56 1
+ w 22
j 480 250
+ p 59 2
+ w 3
j 520 250
+ p 59 1
+ w 32
j 300 350
+ s 60
+ w 22
j 560 350
+ s 61
+ w 36
j 250 320
+ p 66 pin1
+ p 55 2
j 250 320
+ p 66 pin1
+ w 22
j 250 290
+ p 67 pin1
+ p 55 1
j 250 290
+ p 67 pin1
+ w 12
j 560 280
+ p 57 +
+ w 32
j 560 320
+ p 57 -
+ w 36
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=B
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics

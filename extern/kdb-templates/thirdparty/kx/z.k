/
n:1000000
a:-8!x:(`trade;d:("t"$.z.z;`a;"N";23.45;1234))
\t do[n;.z.z]
\t do[n;-8!x]
\t do[n;-9!a]
\t {do[n;2,d]}[]
\

/
`file  /l64 map is 15 w32 is 100 san is 500
\cd f:
h:<`:qwer
\t do[100000;h@!?50]
\t h 2500000#2 /10MB
>h;~`:qwer

`comm 
\q -p 5001
h:<`::5001
\t do[10000;(-h)(::;!?20)];h""
\t do[10000;h(!:;?20)]
\t do[10;h"til 250000"]
@[h;"\\\\";::]
\

n:1000000
\t {do[n;0]}[]
/\t {do[n;0;x;0;x;0; x]}[]
\t {do[n;---------- 0]}[]
\t {do[n;0+0+0+0+0+ 0]}[]

/
x:2;v:"2+(x+3)+-x"
\t do[100000;-4!v]
\t do[100000;-5!v]
\t do[100000;2+(x+3)+-x]
\t {do[100000;2+(x+3)+-x]}2
\

`cache
b:2+a:2.3+i:!10000
\t do[10000;1_a]
\t do[10000;a+2]
`mem
b:2+a:2.3+i:!1000000
\t do[10;1_a]
\t do[10;a+2]
\

i:-1000000?1000000
\t a i
\t a[i]:a
\


1.7/400 w2000/xp/2003
`file
31
406
828
921
390
296
`:qwer
`comm
1062
671
968
265

/linux
`file
46
57
141
200
1276
95
`:qwer
`comm
589
117
556
122

/linux 2.6
> `file
> 134
> 78
> 182
> 228
> 539
> 76
> `:qwer
> `comm
> 485
> 208
> 427
> 135
/\t do[100;.[`:qwer;();:;2 3]]
/\t do[10000;><`:qwer]
/\t do[10000;1:`:qwer]
/\t do[10000;.`:qwer]s

\
`cache
a:2.3+i:!10000
\t do[10000;1_ a]
\t do[10000;2+a]
`mem
a:2.3+i:!1000000
\t do[100;1_ a]
\t do[100;2+a]
b:2+a
\t do[100;a+b]

\

\cd /var/tmp
`file / linux is 10* (3: is .3)
n:1000
\t do[n;.[`:foo;();:;2 3]]
\t do[n;.[`:foo;();,;2 3]]
\t do[n;`foo 1:0x2324]
\t h:<`1:foo;do[100000;h 3:0x2324];>h;~`:foo

`comm / linux is 2*(10* on big one)
/\start k -p 4001
\t do[1000;><`::4001]
\t do[10000;h"23"]
\t do[10000;(-h)"23"];h"23"
\t do[10;h"!",$ 0N!?1000000]
\
\t do[10000;h"!",$?100]
\t do[1;h"!",$?1000000]
h"\\\\"

\
s.9:1000, 600 1000, 900 3400, 450 600 600 800, 650 860 60
i.9: 450, 100  170, 800 1400,  45 27 50 1200,  180 230 18
p1.6:700, 150  300,1100 1100, 670 250 560 375,


j:2+i:!10000
g:2+f:10000#2.3
\t do[10000;+/i]
\t do[10000;2+i]
\t do[10000;2+f]
\t do[10000;i+j]
j:2+i:!1000000
g:2+f:1000000#2.3
\t do[100;+/i]
\t do[100;2+i]
\t do[100;2+f]
\t do[100;i+j]

\
m%c = cpu%bus  p4: f:2*i
/ p4(2.4/400)~i2  (2to5 times ultraIII 1.2GHZ/300?MHZ)
/ linux comm/file 2 times windows  wzunzip 20MB/sec

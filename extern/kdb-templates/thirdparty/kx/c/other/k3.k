\d .k3   /ifcs T

b:`month`date`timestamp`.`hhmm`hhmmss`time
f:(-420+;-12784+;-12784+;::;::;::;%[;8.64e7])
g:( 420+; 12784+; 12784+;::;::;::;*[;8.64e7])
tv:{$[~t|:-t:@x;tv'x;t in 6 9 10 11h;x;t<20;"if"[t>6]$x;tv@. x]}
tb:{$[$[~99=@t:x 1;0;-11=@t:t`T;t in b;0];("h"$13+t)$g[t:b?t]@*x;*x]}
bt:{$[(19<t)||13>t:@x;(tv x;::);(f[t]"if"[t=2]$x;(,`T)!,b t-:13)]};K:(,`K)!,1
dq:{$[$[98=@x;1;98=@!x];.[(!x),'bt'. x:+0!x;(!$[98=@x;0;#+!x];2);{$[(::)~x;K;x,K]}];+(!x;. x;::)]}
qd:{$[&/(@:'d:x[;1])in 0 6 9 10 11h;((k<#d)*k:+/`K in'{$[99=@x;!x;0#`]}'x[;2])!+d:x[;0]!(tb 1_)'x;x[;0]!d]}
ch:{$[99<t:@x;'`type;(~t)|99=t;ch'x;x]}
khp:`k3 2:(`k3hp;2) / connect host port
k:`k3 2:(`k3;2)

\d .
k:{.k3.k[x].k3.ch y}
.z.pg:.z.ps:.:
\

h:.k3.khp[`;2001]
k[h]"23"
k[h]"_w 3:\"a:23\";34"

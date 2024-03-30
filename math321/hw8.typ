#set page(margin: (x: 0.5cm, y: 0.5cm),numbering: "1/1", columns: 1, flipped: false)

= HW8, Harry Luo gluo25\@wisc.edu

== 1 (a)
$ (diff (x,y))/(diff(u,v) )= det mat(1,1;1,-1) = #rect(inset: 8pt)[ $ display(-2)$ ]   $  
== (b) 
$ dif x dif y = |(diff (x,y))/(diff(u,v) )|dif u dif v = #rect(inset: 8pt)[ $ display(2 dif u dif v )$ ] $  
#line(length: 100%)

== 2.(a) 
$ (diff (x,y))/(diff(u,v) )= det mat(v,u;1/v,-u/v^(2)) = #rect(inset: 8pt)[ $ display((-2u) / v)$ ]  $
== (b)
 $ dif x dif y = |(diff (x,y))/(diff(u,v) )|dif u dif v =#rect(inset: 8pt)[ $ display((2u) / v dif u dif v )$ ]  $ 
#line(length: 100%)
== 3.
For $T(u,v) = (u^2-v^2,2 u v), u in [0,1], v in [0,1]$, we know:

$x= u^2-v^2, y= 2u v$, and the Jacobian is $(diff (x,y))/(diff(u,v) )= det mat(2u,-2v; 2v, 2u)  = 4 u^2 + 4 v^2$

Thus, $ integral integral_(R)(x+y)  dif x   dif y &= integral_(0)^(1) integral_(0)^(1) (u^2-v^2+2u v) dot  4(u^2 + v^2)dif u  dif v \ &= 4 integral_(0)^(1) integral_(0)^(1) u^4 - v^4 + 2u^(3) v + 2u v^(3) dif u  dif v \
&=4integral_(0)^(1) 1/5+v/2+v^(3) -v^(4)  dif v\ 
&= 4* 1/2 = #rect(inset: 8pt)[ $ display(2)$ ]  $  

#line(length: 100%)
== 4.
Considering the change of variables $x = a u, y = b v, z = c w$,\
The Jacobian is $(diff (x,y,z))/(diff(u,v,w) )= det mat(a,0,0;0,b,0;0,0,c)  = a b c$

therefore, $ integral integral integral_E   1 dif V =  integral integral integral_D a b c dif u dif v dif w &=^"from symmetry" 8integral_(0)^(pi/2) integral_(0)^(pi/2) integral_(0)^(1)a b c rho^2 sin phi   dif rho  dif phi  dif theta \
 &=  8 a b c integral_(0)^(pi/2)  integral_(0)^(pi/2) lr(1/3 rho ^(3)sin phi|)_(rho=0)^(rho = 1)  dif phi dif theta \ 
 &= 8 a b c integral_(0)^(pi/2) lr((-1/3 cos phi) |)_0^(pi/2)dif theta\ 
 &=8 a b c  dot integral_(0)^(pi/2)1/3 dif theta  \ 
 &= 8 a b c dot 1/3 dot pi/2 = #rect(inset: 8pt)[ $ display(4pi/3 a b c )$ ]  $ 
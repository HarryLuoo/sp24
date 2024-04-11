= HW 10 Harry LUO gluo25\@wisc.edu
== 1. 
$ 
    integral_(C) &(y^2 + sin x)  dif x+ (3x y + y^(4) )dif y, quad D={(r,theta)| r in [0,2], theta in [0,pi/2]}  \
    &= integral_D ((diff( 3x y + y^(4) ))/(diff x) - (diff y^2 + sin x)/(diff y)) dif A  \
    &= integral_D (3y  - 2y) dif A  \ 
    & = integral_D y dif A  quad quad quad "polar transform:" cases(dif A = r dif r dif theta, r in [0,2], theta in [0,pi/2])  \ 
    & = integral_0^(pi/2) integral_0^2 r^2 sin theta dif r dif theta  \
    & = integral_(0)^(pi/2) sin theta dif theta integral_(0)^(2)r^2 dif r\
    & = integral_(0)^(pi/2)8/3 sin theta  dif theta \ 
    & = 8/3 \
$ 
== 2
$ 
 integral_(C)&(x^(5) + y^(3)) d x - (x^(3)+y^(5)  )  d y , C: x^2+y^2=4 \ 
 & = integral_(D) (diff (-x^(3) - y^(3) ))/(diff x)  - (diff (x^(5) + y^(3) ))/(diff y)) dif A \ 
 & = integral_(D) (-3x^(2) - 3y^(2)  ) dif A \ 
 & = integral_(D)-3(x^2+y^2)  dif A quad quad T: theta in [0,2pi], r in [0,2] \
 & = integral_(0)^(2pi) integral_(0)^(2) -3r^2 r dif r dif theta \ 
 & = integral_(0)^(2) -6pi r^(3)  dif r \
 & =   -24 pi
$ 


== 3
$ 
     (diff M)/(diff x) = (diff (7y + sqrt(y^3 +1) ))/(diff x) = 0 \
      (diff N)/(diff y) = (diff (3y - e^(sin(x^2))  ))/(diff y) = 3\ 
      "by greens" integral_(D)(-3)  dif A =-3 integral_(0)^(2pi) integral_(0)^(1)r  dif r   dif theta =  -3pi  
$ 

== 4
$ 
    integral_(C)(e^(sqrt(x+1))+y^2 +1 )  dif x + sin (y^2 - 1) +x^2 dif y\
    (diff (sin (y^2 - 1) +x^2))/(diff x)   = 2x\
    (diff( e^(sqrt(x+1)))+y^2 +1 )/(diff y) = 2y  \
    "by greens" integral_(D)(2y - 2x) dif A \ 
    = integral_(0)^(2) integral_(0)^(1-x/2) 2x-2y dif x  dif y\
    = integral_(0)^(2) -5/4 x^2 + 3x -1  dif x  = 2/3
$ 

== 5
#image("hw101.png")
#image("hw102.png")

== 6
$ 
    (diff arrow(r))/(diff u)= (1,1,2), quad (diff arrow(r))/(diff v) = (1,-1,1) \   
    (diff arrow(r))/(diff u) times (diff arrow(r))/(diff v) = (3,1,-2) \
    integral_(D)arrow(F)   dif S = integral_(D)arrow(F) dot (diff arrow(r))/(diff u) times (diff arrow(r))/(diff v) dif u dif v \ 
    = integral_(D)(u+v,u-v,1+2u+v) dot (3,-1,-2) dif u dif v \
    = integral_(D)(3u+3v-u+v-2-4u-2v) d u d v\
    = integral_(D)(-2u+2v-2) d u d v\
    = integral_(0)^(1) integral_(0)^(1) -2u+2v-2) dif u  dif v\
    = -2

$ 
== 7
$ 
    integral_(D) (y,x^2+y^2,x^2) dot (-2x,-2y,1) dif A\ =
    integral_(0)^(1) integral_(0)^(1) (-2x y -2 x^2y -2y^(3)+x^2 ) dif x  dif y\
    = integral_(0)^(1)(-5/3y - 2 y^3 + 1/3)  dif y\
    = -1 

$ 

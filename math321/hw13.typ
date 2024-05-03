#set math.equation(numbering:"1")
#set page(margin: (x: 1cm, y: 1cm), columns: 1, flipped: false)

= HW 13 Harry Luo

== 1
recall cauchy integral formula $ 
    f(z_0) = 1/(2 pi i) integral_(C) f(z)/(z-z_0) dif z $
For our integral, $f(z) = z^3 + e^(z^2), z_0 = 1+i$
applying the CIF: 

$ 
    integral_(C) (z^3+ e^(z^2))/(z-(1+i))  dif z = 2pi i f(1+i) &= 2pi i ((1+i)^3 + e^((1+i)^2)) \ 
    & = 2 pi i (e^(2i)+ 2i - 2 )
$ 
 
== 2
recall the CIF $ 
    f^(n) (z_0) = (n!)/(2 pi i) integral_(C) (f(z))/((z-z_0)^(n+1))  dif z  
$ 
Here, $z_0 =0, n = 1, quad "let" f(z) = e^(z)+e^(z^3)  $
$ 
    integral_(C) (f(z))/(z^2) dif z &= (2 pi i )/(1) f^((1)) (0) \ 
    & = 2 pi i (e^(0) + 3(0)^2 e^(0)) =
#rect(inset: 8pt)[
$ display(    2 pi i)$
]

$ 
 

== 3
Using the CIF, take $z_0 = -1, n=2, f(z) = z^2024 + 4z$ 
$ 
    integral_(C) (f(z))/((z+1)^3) dif z &= (2 pi i )/(2) f^((2)) (-1) \   
$ <eq.5>
where $f^((2))(-1) = 2024*2023 (-1) ^ 2022 = 4094552$ , @eq.5 becomes $ 
    integral_(C) (z^2024 + 4z)/((z+1)^3) dif z &=  
#rect(inset: 8pt)[
$ display(    4094552 pi i )$
]

   
 $ 
     
 
== 4
Using the CIF, take $f(z) = cos (z), z_0=0$ 
$ 
    integral_(|z|=3) (cos(z))/(z^5) dif z &=2pi i cos^((4)) (0) \ 
    & = 2 pi i cos(0)/4! = 
#rect(inset: 8pt)[
$ display(    (pi i)/12 )$
]

$ 

== 5
- (a)find poles
$ 
    1+z^2 = (z+i)(z-i) => z_1 = -i, z_2 = i\
    "Res"(f,z_1) = lim_(z -> -i) (z+i)/(1+z^2) = -1/(2i) \ 
    "Res"(f,z_2) = lim_(z -> i) (z-i)/(1+z^2) = 1/(2i)
$ 

- (b)
Consider subsitution $f(z) = ( 1)/(1+x^2)$ , we can use a semicircular contour in the upper half-plane, which will enclose only the pole at z = i.

$ 
    integral_(gamma) f(z)  dif z &=  integral_(-R)^(R) f(z)  dif z + integral_(C) f(z)  dif z = 2pi i "Res"(f,z=i) + underbrace(integral_(C) f(z)  dif z,(*))  $
for the second term, parametrize $z = R e^(i theta)$ , $ (*) = integral_(C) (1)/(1+R e^(i 2theta)) dif theta,quad theta in [0,pi] $ 

as $R-> infinity$, the second term becomes 0, and the integral becomes $ 
    integral_(-infinity)^(infinity) f(z)  dif z &= 2 pi i "Res"(f,z=i) \ 
    & = 2 pi i (1/(2i)) = pi $

Since $ (1)/(1+x^2)$ is even, $ 
#rect(inset: 8pt)[
$ display(    integral_(0)^(infinity) (1)/(1+x^2) dif x  = pi/2 )$
]
$

== 6
- (a) 
Find all the poles $ 
    (1+z^2)^2 &=0 \ 
     z^2 &= -1 \ 
     z &= plus.minus i 
$ 
Recall that we can find the residue by$ 
"Res"(f,z_0) = lim_(z -> z_0)(1)/(n-1)! (d/(d z))^(n-1) [(z-z_0)^(n) f(z)]
$ 
Take $n = 2, z_0 = i$, we have $ 
   "Res"(f,i)= lim_(z -> i) (dif )/(dif z)[(z-i)^2 f(z)] &= lim_(z -> i) (dif )/(dif z)[(z-i)^2/((z - i)^2 (z+i)^2)] \ 
    & = lim_(z -> i) (dif )/(dif z)[1/((z+i)^2)] \ 
    & = lim_(z -> i) -2/(z+i)^3 \ 
&#rect(inset: 8pt)[
$ display(     = -i/4 )$
]
 
$ 
similarly, take $n = 2, z_0 = -i$, we have $ 
    "Res"(f,-i) = lim_(z -> -i) (dif)/(dif z) [(z-z_0)^2/(z^2-i^2)^2] &= lim_(z -> -i) (dif)/(dif z) [(z+i)^2/((z+i)^2 (z-i)^2)] \ 
    & = lim_(z -> -i) (dif)/(dif z) [(z-i)^(-2)] \ 
    & = lim_(z -> -i) (-2(z-i)^(-3)) \ 
&#rect(inset: 8pt)[
$ display(    & =  i/4)$
]

$ 


- (b) 
recall Cauchy residue thm, $ integral_(gamma) f(z)   dif z = 2 pi i sum_(k=1)^(n) "Res"(f,z_k)     
$ 
Consider subsitution $f(z) = ( 1)/((1+z^2)^2)$ , we can use a semicircular contour in the upper half-plane, which will enclose only the pole at z = i.#image("assets/2024-04-30-23-11-37.png", width: 30%) 
$ 
    integral_(gamma) f(z)  dif z &=  integral_(-R)^(R) f(z)  dif z + integral_(C) f(z)  dif z = 2pi i "Res"(f,z=i) $ 
$ 
     
 => integral_(-R)^(R) f(z)  dif z &= 2pi i "Res"(f,z=i) - integral_(C) f(z)  dif z \ 
 & = 2 pi i (-i/4) - underbrace(integral_(C) f(z)  dif z,(*)) \    
$  <eq.7>
for $(*)$ , parametrize $z = R e^(i theta)$ , $ (*) = integral_(C) (1)/(1+R e^(i theta)) dif theta,quad theta in [0,pi] $ 

When $R-> infinity$, @eq.7 becomes $ 
    integral_(-infinity)^(infinity) f(z)  dif z &= 2 pi i (-i/4) - underbrace(integral_(C) (1)/(1+R e^(i theta))  dif theta, --> 0) \ 
    & = pi/2 $ 
Since $ (1)/(1+x^2)^2$ is even, $ 
    integral_(0)^(infinity) (1)/(1+x^2)^2 dif x  = 
#rect(inset: 8pt)[
$ display(    pi/4)$
]

$ 
  
== 7
$ 
    f(z) = (z^2)/((z^2+1)(z^2+4)) 
$ 
- (a)
$ (z^2)/((z+i)(z-i)(z+2i)(z-2i)) => z_1 = i, z_2 = -i, z_3 = 2i,  z_4 = -2i \ 
"Res"(f,z_1) = lim_(z->i ) (z^2)/((z+i)(z+2i)(z-2i)) = -1/(6i)\
"Res"(f,z_2) = lim_(z->-i ) (z^2)/((z-i)(z+2i)(z-2i)) = 1/(6i)\
"Res"(f,z_3) = lim_(z->2i ) (z^2)/((z-i)(z+i)(z+2i)) = 1/(3i)\
"Res"(f,z_4) = lim_(z->-2i ) (z^2)/((z-i)(z+i)(z-2i)) = -1/(3i)
$ 

- (b)
Similarly to 6(b), we can use a semicircular contour in the upper half-plane, which will enclose only the poles at z = i, 2i. The contour integration over the complex arc is still 0 as $R-> infinity$ 

$ 
    integral_(gamma) f(z)  dif z &= integral_(-R)^(R) f(z) dif z + integral_(C) f(z)  dif z \ => integral_(-infinity)^(infinity) f(z) dif z &= 2pi i ( "Res"(f,z_1) + "Res"(f,z_3))   =
    pi/3\
$ 
Since $f(x)$ is even, $ 
    integral_(0)^(R) f(x) dif x  = 1/2 integral_(-infinity)^(infinity) f(x) dif x = 
#rect(inset: 8pt)[
$ display(    pi/6)$
]

$ 
 
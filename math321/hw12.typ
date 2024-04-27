= HW 12, Harry Luo, gluo25\@wisc.edu

= 1
Recall that cauchy-riemann equation:  $partial_x u = partial_y v, quad partial_y u = -partial_x v$ is a necessary condition for a complex function to be holomorphic.
let $f(z) = (x+i y)^3$. Expanding, we have:
$ 
    f(x,y) &= x^3 + 3 i x^2 y - 3 x y^2 - i y^3 \ 
    & = (x^3 - 3x y^2) + i(3 x^2 y - y^3) \ 
    & => cases(u(x,y) = x^3 - 3x y^2 , v(x,y) = 3 x^2 y - y^3)
$ 
check if the Cauchy-Riemann equations hold:
$ 
    partial_x u = 3x^2-3y^2, quad partial_y u = -6x y\
    partial_x v = 6 x y, quad partial_y v = 3 x^2 - 3 y^2 \
    => partial_x u = partial_y v, quad partial_y u = -partial_x v
$ 
Thus the function satisfies the cauchy-riemann equations and is holomorphic.

= 2
$ f(x,y) &= e^(x)(cos y + i sin y) \ 
& = e^(x)cos y + i e^x sin y \ 

 & => cases(u(x,y) = e^x cos y, v(x,y) = e^x sin y)  
 $ $ 
=> cases(partial_x u = e^x cos y quad partial_y u = -e^x sin y ,
partial_y v = e^x cos y quad partial_x v = e^x sin y)\

=> partial_x u = partial_y v, quad partial_y u = -partial_x v
$ Cauchy-Riemann equations hold at any point $z in bb(C)$ 

= 3
let $z = x+i y$. the function becomes$ 
    f(x,y) &= 1/(x+i y) = (x- i y)/((x + i y)(x - i y)) =(x- i y)/(x^2 + y^2) \ 
    & = x/(x^2 + y^2) - i y/(x^2 + y^2) \
    & => cases(u(x,y) = x/(x^2 + y^2), v(x,y) = -y/(x^2 + y^2)) 
$ 
$ 
    cases(
partial_x u = (-x^2 + y^2)/(x^2 + y^2)^2 quad partial_y u = -(2 x y)/(x^2 + y^2)^2 ,
partial_x v = (2x y)/((x^2+y^2)^2) quad partial_y v = (y^2-x^2)/(x^2 + y^2)^2 )\
=> partial_x u = partial_y v, quad partial_y u = -partial_x v
$ 
It is obvious that the four partial differentiations exist and are continuous.

Cauchy-Riemann equations hold at any point $z in bb(C)$.  
#rect(inset: 8pt)[
Thus the function is holomorphic on ($bb(C)$ ).)
]


= 4
we propose the following parametrization of the contour C: $z = e^(i t), dif z = i e^(i t) dif t, "for" t in (0,2pi)  $ 

The integration becomes: $ 
     integral.double_(C) z^(-n)   dif z = integral_(0)^(2pi) (e^(i t))^(-n) i e ^( i t) dif t = integral_(0)^(2pi) i e^(i(1-n)t)  dif t  
$ Noticing $ integral e^(i N t)   dif t = 1/(i N) e^(i N t)$ if $N eq.not 0$, the integral becomes $ 
#rect(inset: 8pt)[
$ display(     i [1/(i(1-n)) e^(i(1-n)t)]_(0)^(2pi) = 0 )$
]

$ 

= 5
#image("assets/2024-04-23-18-25-35.png")

- solution:
We parametrize the unit circle as $z = e^(i t), dif z = i e^(i t) dif t, "for" t "from" pi/2 "to" 0$

The integration becomes $ 
    integral_(pi/2)^(0) (e^(3 i t)+ e^(e^(i t) )) i e^(i t)    dif t &= 
    integral_(0)^(pi/2) - i e^(4 i t)   dif t + integral_(0   )^(pi/2) -i e^(e^(i t) + i t)  dif t \ 
    & = lr(-i [(e^(4 i t) )/(4 i)]_0^(pi/2)) - i( lr(-i e^(e^(i t) )mid(|)_0 ^(pi/2) ) )    \ 
    & = e - e^(display(e^(pi slash 2 space i)) )  - 1/4 e^(2 pi i) + 1/4 \ 
#rect(inset: 8pt)[
$ display(    & = e - e^(i) )$
]
 
$ 
 
 

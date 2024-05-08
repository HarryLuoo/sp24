= HW 11 Harry Luo gluo25\@wisc.edu\
\

+ recall stokes theorem $integral.double_(S) (nabla times arrow(F)) dot arrow(n) dif S= integral.cont_(C) arrow(F) dot   dif arrow(r)$.\  Let the surface  bound by $C$ be a simple disk $x^2+y^2 <=4, z=7$. Unit normal vector of this surface is $arrow(n) = (0,0,1) $ \
  $ 
   nabla times arrow(F) = det display(mat(
    i,j,k; 
    (diff )/(diff x) ,(diff )/(diff y) ,(diff )/(diff z); 
    3x ln(z), 2y z^2, sqrt(x y +e^(x) ))) 
    = display(mat((x)/(2sqrt(x y + e^(x) ) )- 4 y z;(3x)/(z)- (y+e^x )/(2sqrt(x y + e^x) );0)) 
  $ 
  Thus, $(nabla times arrow(F)) dot arrow(n) = 0$. 
   This implies that $ integral.double_(S) (nabla times arrow(F)) dot arrow(n) dif S= 0$ \ 
  #rect(inset: 8pt)[Thus the result of the given line integral is 0]

+ Choose A as the triangle with vertices $(1,0,0),(0,1,0),(0,0,1)$ as suggested, and A follows the equation $x+y+z=1$. Normal vector to S is $arrow(n) = (1 ,1,1)$
     $ 
    nabla times arrow(F) = det display(mat(i,j,k; (diff )/(diff x) ,(diff )/(diff y) ,(diff )/(diff z); x+y^2,y+z^2,z+x^2)) = display(mat(-2z;-2x;-2y)) 
     $ 
      Thus, $(nabla times arrow(F)) dot arrow(n) = -2/sqrt(3)(x+y+z)$.
      $ 
           integral.double_(S) (nabla times arrow(F)) dot arrow(n) dif S 
           &= -2integral.double_(S) x+y+z dif A \ 
           & = -2integral.double_(S) x+y+1-x-y dif A \ 
           & = -2integral.double_(S) 1 dif A \ 
           & = -2 times "Area: projection of 3d triangle on the xy plane" \ 
           & = -2 times 1/2 \ 
           & = -1
      $ 

+ #rect($ 
    "Re"(z) = sqrt(2); quad "Im" = -pi
$ )

+ 
  (a) $ (2+i)+(sqrt(3)+8i ) = #rect(inset: 8pt)[ $(2+sqrt(3)) +9 i$] $ \
  (b) $ (3-6-6i) = 
#rect(inset: 8pt)[
$ display(  (-3-6i))$
] 
$\
  (c)  $ 16 +2i -24i -3 i ^2 =
#rect(inset: 8pt)[
$ display(   (19 -22i))$
]
 $ 

  #line(length: 100%)
+
  
  #figure(
  grid(
  columns: 2,
  gutter: 1mm,
  rect(inset: 8pt)[
 $ display( abs(z) = sqrt((-2)^2+3^2) = sqrt(13) ) $
 ],image("assets/2024-04-16-16-51-03.png", width: 70%)
  ))

//6
+ recall triangle inequality $|z_1+z_2| <= |z_1|+|z_2|$.
  $ 
     abs(3 + cos(5)i) <= |3|+|cos(5)i|=3+|cos(5)| <= 4\
      abs(3 + cos(5)i) = sqrt(3^2+cos^2(5)) >= sqrt(9-1) = sqrt(8) >=2  \
  $ #rect[therefore $2<=abs(3 + cos(5)i)<= 4$] 

+ #rect(inset: 8pt)[
$ display( z^* = 3-8i)$
]
+ (a) $ 
    ((1-i)(1-i))/((1-i)(1+i)) = (1-2i-1)/(2) = 
#rect(inset: 8pt)[
$ display(    0+i(-1))$
]

$ 
  (b) $ 
      ((1+i)(1-sqrt(2)i ))/((1+sqrt(2)i)(1-sqrt(2)i ) ) = (1-i sqrt(2) +i+sqrt(2) )/(3) = (1+sqrt(2)+(1-sqrt(2) )i )/(3)
#rect(inset: 8pt)[
$ display(       = (1+sqrt(2) )/(3) + i (1-sqrt(2) )/(3))$
]

  $ 
 (c) $ -i -1 -4 =
#rect(inset: 8pt)[
$ display(  -5 +i(-1))$
]
 $ 


+ let $z = a + b i; w = c + d i$. It follows that $ 
    (z w)^* &= (a c - b d) - i (a d + b c) \

    z^* w^* &= (a - b i)(c - d i) = (a c - b d) - i (a d + b c) \ &
#rect(inset: 8pt)[
$ display(    => (z w)^*=z^* w^*)$
]
 \
$ 
 
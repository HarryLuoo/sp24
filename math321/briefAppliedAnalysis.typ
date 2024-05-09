#set heading(numbering: "I.1")
#set page(margin: (x: 3cm, y: 1cm))
#set text(12pt)
#show math.equation: set text(13pt)
#text(font: "Cambria",size: 14pt,weight: "black")[Awesome applied analysis\
Notes on MATH 321]
Harry Luo

The course contents could be better had it been Fabien's class, but probably Trinh saved my GPA. 
#line(length:100%, stroke:(thickness: 2pt))
#outline(indent: auto,)
#pagebreak()


= Vector algebra
== Coordinate Transformation
=== cylindical
$
x = rho cos phi\
y = rho sin phi\
z = z
$
reverse
$
rho = sqrt(x^2 + y^2)\
cos phi = x/rho\
sin phi = y/rho
$
=== spherical
$
x= rho sin phi cos theta\
y= rho sin phi sin theta\
z= rho cos phi
$
reverse 
$
rho = sqrt(x^2 + y^2 + z^2)\
cos phi = z/rho\
cos theta = x/r\
sin theta = y/r
$

== Dot product
- commutative
- positive definite
- distributive
- cauchy-schwarz inequality
== cross product
- anticommutative $arrow(u)times arrow(v)= -(arrow(v) times arrow(u))$
- distributive $arrow(u) times (arrow(v)+ arrow(w ))= arrow(u) times arrow(v) + arrow(u)+ arrow(w)$
- scalar mulipication
- triple scalar product $arrow(u) dot (arrow(v) times arrow(w)) = (arrow(u)times arrow(v) dot arrow(w)) $
- triple vector product $arrow(a) times( arrow(b) times arrow(c))=(arrow(b)dot arrow(a))arrow(c)- (arrow(c)dot arrow(a))arrow(b)$


== Projection
The projection of $arrow(a)$ onto $arrow(b)$ is given by $ 
#rect(inset: 8pt)[
$ display(    (arrow(a) dot arrow(b))/(norm(arrow(b))^2) med arrow(b)  = (a dot hat(b)) hat(b) )$
]

$ 
  

#line(length: 100%)

= Vector calculus
  == Are length
- Def: Given a curve $arrow(r)(u)=(x(u) , y(u), z(u))$ for $a<=t<=b$ the length of the curve S, as a function of time is given by
#rect(inset: 8pt)[ $ display( S(t) = integral_(a)^(t) norm(dot(r(u)))  dif u) \ 
"where" norm(dot(r)(u)) = sqrt(((dif x )/(dif t))^2 + ( (dif y)/(dif t) )^2  + ( (dif z)/(dif t)) ^2)
$ ]    
- Curvature: $ 
    K(t) = (norm(dot(T)(t)) )/  (norm(dot(r)(t)))=norm( (dot(r)(t) times dot.double(r)(t) ) ) / (norm(dot(r)(t)))^3 , "where" T(t) =( dot(r)(t)) / norm(dot(r)(t))
$ 
 

  == Line integration
-  for curve $arrow(r)(t) =(x(t),y(t))$ 
  $ 
#rect(inset: 8pt)[
$ display(      integral_(a)^(b) f(x,y) dif s = integral_(a)^b f[x(t),y(t)] sqrt(((dif x)/(dif t))^2+ ( (dif y)/(dif t))^2)     dif   t)$
]

  $ 
- center of mass $(overline(x), overline(y), overline(z))$, where $ 
    cases(
        overline(x) = (1/M) integral_(C) rho(x,y,z) x d s,
        overline(y) = (1/M) integral_(C) y rho(x,y,z) d s,
        overline(z) = (1/M) integral_(C) z rho (x,y,z) d s)
$ 

- Work done by force F along curve, $arrow(r)(t) $ , which can be generalized into the formula for line integration,  $ 
W = integral_(C) F dot dif arrow(r) = integral_(C) arrow(F) dot arrow(T) dif s = 
#rect(inset: 8pt)[ $ display(integral_(a)^(b) F[x(t),y(t)] dot (dot(r)(t)) dif t )$ ] 
$ 

- When vector field $arrow(F)=arrow(F)(x,y,z)=(P,Q,R)$,
  $ 
      integral_(C) arrow(F) dot dif arrow(r) = integral_(C) P d x + Q d y + R d z  
  $ 
  

  == Surface integration

- Parametric representation of surface:
  $ 
      cases(x = x(u,v) , y = y(u,v) , z = z(u,v) ) 
  $ 
  
- Use normal vector at a point $(u_0,v_0)$  of surface to represent tangent plane. 
$ 
    arrow(r_v) = (partial arrow(r))/  (partial v)(u_0,v_0), arrow(r_u) = (partial arrow(r))/  (partial u)(u_0,v_0)   \
    arrow(N) = arrow(r_u) times arrow(r_v) 
$ 

- Surface area of a surface S with $(u,v) in D$ $ 
    A(S) = integral.double_(D) norm(arrow(r_u) times arrow(r_v)) dif u dif v 
$ 

  == Jacobian

- Def: Given a transformation $(u,v) in D --> [x(u,v) , y(u,v) ] in S$, the Jacobian is given by $ 
#rect(inset: 8pt)[
$ display(    J(u,v)=(diff (x,y))/(diff (u,v)) equiv det mat( (diff x)/(diff u) , (diff x)/(diff v) ; (diff y)/(diff u) , (diff y)/(diff v) )  )$
]

$ 
- Jacobian in coordinate transformation
Upon evaluating an integral, we can change the coordinates of the integral from ${x,y} -> {u,v}$ by parametrize the variables: $ x = x(u,v) quad y= y(u,v) $  
Then the integral becomes
$ 
     integral.double_(S) f(x,y) dif A = integral.double_(D) f(x(u,v),y(u,v)) |J(u,v)| dif u dif v
$ 

  == Gradient
- Nabla operation: $ 
#rect(inset: 8pt)[
$ display(    nabla = (partial)/(partial x) hat(x) + (partial)/(partial y) hat(y)  + (partial)/(partial z) hat(z)) $
]
 $

- Gradient in cartesian Scalar field $f = f(x,y,z)$  $ 
    nabla f = ( (diff f)/(diff x) , (diff f)/(diff y) , (diff f)/(diff z) ) 
$ 
- Gradient in polar coordinates $f = f(r,theta)$ $ 
    nabla f = arrow(e_r) (diff g)/(diff r) +arrow(e_theta) 1/r (diff g)/(diff theta)\
    "where" arrow(e_r) = (x)/(norm(x)) = (cos theta, sin theta)  arrow(e_theta) = (-sin theta, cos theta)\
    nabla = arrow(e_r) partial_r + arrow(e_theta) 1/r partial_theta 
    $
- Gradient in spherical$ 
    nabla f = hat(rho) partial_rho + hat(phi) 1/rho partial_phi + hat(theta) 1/(rho sin phi) partial_theta 
$ 
- Gradient of scalar field in spherical coordinates $ 
#image("scalar_field_spherical.png")
     
$ 

== Divergence
- div of vec field: 
3D: $ 
      nabla dot arrow(F) = (diff F_1)/(diff x ) + (diff F_2)/(diff y) + (diff F_3)/(diff z)
  $
  

- Div in polar 2D 
$ 
    arrow(U) = U_r hat(r) + U_theta hat(theta), "where" U_r = U dot hat(r), U_theta = U dot hat(theta)\
    nabla dot U = (1/r) (partial (r U_r))/(partial r) + (partial U_theta)/(partial theta) 
$ 

- Div in sphereical coord
 $ 
     arrow(U)=U_rho hat(rho) + U_theta hat(theta) + U_phi hat(phi),
\ nabla dot arrow(U) = 1/rho^2 (partial (rho^2 U_rho))/(partial rho) + 1/(rho) sin phi (partial (U_theta))/(partial theta) + 1/(rho sin phi) (partial (U_theta sin phi))/(partial phi)) 
$ 


  == Green's theorem
For $P(x,y), Q(x,y)$, and a simple closed curve C,  
$ 
#rect(inset: 8pt)[
$ display(    integral_(C) P d x + Q d y = integral.double_(D) (partial Q)/(partial x) - (partial P)/(partial y) d A=integral.double_(C) arrow(F) dot dif arrow(r) )$
]

$ 


  == Flux
 - for a surface, $ arrow(r)(u,v) = (x(u,v), y(u,v), z(u,v))\ => integral.double_(S) arrow(F) dot  dif arrow(S) = integral.double_(S) arrow(F) dot arrow(n)  dif S = integral.double_(D) arrow(F)(arrow(r)(u,v)) dot (arrow(r_u) times arrow(r_v))  dif A 
  
  $ 
  
- if the surface is a graph of a fucntion $z=g(x,y) $ where $  (x,y) in D, arrow(F) = (P,Q,R)$,
  then $ 
      integral_(S) arrow(F) dot dif arrow(s) = integral.double_(D) (P,Q,R) dot (-partial_x g, -partial_y g, 1)  dif A   
  $ 
   
 == Stokes' theorem


  Let $F: R^3 -> R^3$ be a vector field on $R^3$ with any normal vector $arrow(n)$ , and for a surface $S$ with projection on ${u,v}$ being $A$,   then $ 
#rect(inset: 8pt)[
$ display(      integral_(C) arrow(F) dot dif arrow(r) = integral.double_(S) "curl"(arrow(F)) dot hat(n)dif S = integral.double_(S) ( nabla times arrow(F)) dot arrow(n) dif A)$
]

      ,\ "where" "curl"(arrow(F)) = nabla times arrow(F) 
  $ 

- Discussion on stokes theorem

  for a surface surface parametrized by $arrow(r)_(u), arrow(r)_(v)$, we have $ 
      dif arrow(S) = hat(n) dif A = arrow(n) dif u dif v 
  $ 
Therefore, when using stokes theorem, we cna either turn it into a surface integral with respect to actual surface S, with 




#line(length: 100%)
= Complex analysis
== Complex numbers and basic operations
=== Definitions
  - Def: $i^2 = -1$
  - Complex number: $z = x + i y$
  - Conjugate: $z = x - i y$
  - Real part: $Re(z) = x$, Imaginary part: $Im(z) = y$
  - Modulus/ Norm/ Magnitude: $|z| = sqrt(x^2 + y^2)$
  - Polar form: $z = |z| (cos theta + i sin theta) = r e ^(i theta) $ 
  - Argument(angle) : $arg(z) = theta$ such that $z = |z| (cos theta + i sin theta)$. Angle between vector $(x,y)$ with real axis 
=== operations
  - addition: $z_1+z_2 = (x_1+x_2) + i(y_1+y_2)$
  - multiplication: $z_1 z_2 = (x_1 x_2 - y_1 y_2) + i(x_1 y_2 + x_2 y_1)$ \
    (normal multiplication with $i^2=1$ )
  - Division:$ 
      z_1/z_2 = (z_1z^*_1)/(z_2z^*_2) =(x_1 x_2 + y_1 y_2)/(x_2^2 + y_2^2) + i (x_2 y_1 - x_1 y_2)/(x_2^2 + y_2^2) 
  $ 
  - Commutativity: $z_1 z_2 = z_2 z_1 quad z_1+z_2 = z_2 + z_1$
  - associativity: $(z_1 z_2) z_3 = z_1 (z_2 z_3) quad (z_1+z_2)+z_3=z_1+(z_2+z_3)$
  - distributivity: $z_1(z_2+z_3) = z_1 z_2 + z_1 z_3$
- Trig inequality: $|z_1+z_2| <= |z_1| + |z_2|$

== Differentiation
=== open sets in $bb(C)$
  - Def: Let $z_0 in bb(C), r >0$.   Disk $B_r(z_0) = {z in  bb(C)| abs(z-z_0)<r}$ It is very important to note that it's not "less or equal" 

    Given a set  $Omega in bb(C)$, A point $z_0 in Omega$ is called an interior point of $Omega$ if there exists $r>0$ s.t. $B_r(z_0) subset Omega$.  \
    A set $Omega$ is *open* if every point of $Omega$ is an interior poinot of $Omega$. In other words, there are no points on the boundary of $Omega$ that are included in $Omega$.

=== Holomorphic function
Let $Omega$ be an open set in $bb(C)$, A function $f: Omega -> bb(C)$ is called *holomorphic* at $z_0 in Omega$ if the limit $ 
    f'(z_0) = lim_(h -> 0) (f(z_0+h) - f(z_0))/h  (h in bb(C), h eq.not 0) $ exists.
- The said function $f(z)$ is holomorphic on $Omega$ if it is holomorphic on every point of $Omega$.
- In the special case that $f$ is holomorphic on $bb(C)$, $f$ is an *entire* function.

- Holomorphic in 1st order guarantees holomorphic and analytic in any order and thus continous. 

=== Differentiation operations
If $f$ and $g$ are holomorphic on $Omega$, then 
- $f+g$ is holomorphic on $Omega$, $ (f+g)' = f' + g' $
- $f g$ is analytic on $Omega$, $ (f g)' = f'g + f g' $   
- $f/g$ is analytic and, if $g(z) eq.not 0$, $ f/g = (f'g - f g')/g^2 $  

=== Cauchy-Riemann equations
for complex function $f: Omega -> bb(C) , f(z) = u(x,y)+i v(x,y)$ that is holomorphic at $z_0 = x_0 + i y_0$, then the partial derivatives of $u$ and $v$ exist and satisfy the Cauchy-Riemann equations: $ 
#rect(inset: 8pt)[
$ display(    partial_x u = partial_y v quad partial_y u = -partial_x )$
]
 $ 

Conversly, if $u$ and $v$ are continuously differentiable on an open set $Omega$ and satisfy the Cauchy-Riemann equations, then $f(z) = u(x,y) + i v(x,y)$ is holomorphic on $Omega$.

In the language of logic, let C be "satisfying cauchy-riemann equations", and H be "function is holomorphic", then $H -> C$. If D is "u and v have continuous partial derivatives with respect to x and y", then $(C "&" D) <-> H$ 

== Cauchy's integral theorem (closed loop)

For a closed curve $C$ in an open set $Omega$ and a holomorphic function $f: Omega -> bb(C)$, then $ 
    integral.cont_(C) f(z) dif z = 0
$ 
  
== Fundemental theorem of calculus for complex analysis
If $f$ is holomorphic on an open set $Omega$ and $a,b in Omega$, and for $f(z) = F'(z)$ , and $a,b$ are the start and end points of curve $C$,    we have $ 
#rect(inset: 8pt)[
$ display(    integral_(C) f(z) dif z = F(b) - F(a))$
]

$
 





== Cauchy's integral formula
This relates the value of a contour integration  to the value of its derivatives on a curve.
$ 
#rect(inset: 8pt)[
$ display(    f^(n) (z_0) = (n!)/(2 pi i) integral_(C) (f(z))/((z - z_0)^(n + 1) ) dif z  )$
]

$ 
Often times, we are concernnd in finding the value of a function of the form $ integral_(C) (f(z))/((z-z_0)^(n+1) ) dif z , $ so we would like to take the nth derivative of the function $f(z)$ at $z_0$, and find the desired integral by $ 
    (2 pi i)/(n!) f^(n) (z_0) 
$ 
 
== Cauchy's residue theorem
=== Poles
Simply find where the fraction is not defined, i.e. where the denominator is 0. This is normally done by first using $(a^2 + z^2) = ( z + a i) (z - a i)$ to factor the denominator, and then setting the denominator to 0 to find poles $z_i $ .

=== Residue
If the factored denominator has the form $(z + a i) (z + b i)$, then it has two poles of order 1. If it has the form $(z + a i)^2 (z + b i )^2$, then it has 2 poles of order 2.

If has poles of order one, for each pole $z_i$ , find residue by $ 
     "Res"(f,z_i) = lim_(z  -> z_i) (z - z_i) f(z)
$ 

If has pole of order n, for each pole $z_0$, find res by$ 
     "Res"(f,z_0) = lim_(z -> z_0) (1)/((n-1)!) (d/(d z))^(n-1) ((z-z_0)^n f(z))

$ 


=== Cauchy's residue theorem
For a simple closed curve $C$ in an open set $Omega$ and a holomorphic function $f: Omega -> bb(C)$, then $
    integral.cont_(C) f(z) dif z = 2 pi i sum_(k=1)^(n) "Res"(f,z_k)
$ 
where $z_k$ are the poles of $f$ in $C$.

Often times, we want to find the value of the integral $ 
    integral_0^infinity f(x) dif x  
$ to which we are clueless to solve in the real domain. Cauchy suggests that we can take a detour via the complex domain by using the subsitution $f(z) = f(x)$ where $z in bb(C)$. By residue theorem we have $ 
    integral.cont_(C) f(z)  dif z = integral_(-R)^(R) f(z)  dif z + integral_(gamma) f(z)  dif z = 2 pi i sum_(k=1)^(n) "Res"(f,z_k)   
$ Normally, this looks like 
#image("assets/2024-04-30-23-11-37.png", width: 50%)
where $gamma$ is the semicircle in the complex domain

We thus get $ 
    integral_(-R)^(R) f(z)  dif z = 2 pi i sum_(k=1)^(n) "Res"(f,z_k) - underbrace(integral_(gamma) f(z)  dif z , *) 
$ 
we notice that $(*) <= "max"_(|z| = R)[ f(z) ] * "length of" gamma = f(R) * pi R =^(R-> 0) 0$. 

In english this means $(*)$ is smaller than the product of maximal value of $f(z)$ on the semicircle and the length of the semicircle, which goes to 0 as $R$ goes to infinity.  

Thus the above integral becomes$ 
    integral_(-R)^(R) f(z)  dif z = 2 pi i sum_(k=1)^(n) "Res"(f,z_k) 
$ 

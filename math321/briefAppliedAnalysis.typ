#set heading(numbering: "I.1")
#set page(margin: (x: 3cm, y: 1cm))
#set text(12pt)
#show math.equation: set text(13pt)
#text(font: "Cambria",size: 14pt,weight: "black")[Awesome applied analysis\
Notes on MATH 321]
Harry Luo

#line(length:100%, stroke:(thickness: 2pt))
#outline(indent: auto,)
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
    (arrow(a) dot arrow(b))/(norm(arrow(b))^2) med arrow(b)  = (a dot hat(b)) hat(b)
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
      integral_(C) f(x(t),y(t)) sqrt(((dif x)/(dif t))^2+ ( (dif y)/(dif t))^2)     dif   t
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
    J(u,v)=(diff (x,y))/(diff (u,v)) equiv det mat( (diff x)/(diff u) , (diff x)/(diff v) ; (diff y)/(diff u) , (diff y)/(diff v) )  
$ 
- Jacobian in coordinate transformation
Upon evaluating an integral, we can change the coordinates of the integral from ${x,y} -> {u,v}$ by parametrize the variables: $ x = x(u,v) quad y= y(u,v) $  
Then the integral becomes
$ 
     integral.double_(S) f(x,y) dif A = integral.double_(D) f(x(u,v),y(u,v)) |J(u,v)| dif u dif v
$ 

  == Gradient
- Nabla operation: $ 
    nabla = (partial)/(partial x)  + (partial)/(partial y)  + (partial)/(partial z) $

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

$ 
    integral_(C) P d x + Q d y = integral.double_(D) (partial Q)/(partial x) - (partial P)/(partial y) d A=integral.double_(C) arrow(F) dot dif arrow(r)
$ 


  == Surface Integral 
 - for a surface, $ arrow(r)(u,v) = (x(u,v), y(u,v), z(u,v))\ => integral.double_(S) arrow(F) dot  dif arrow(S) = integral.double_(S) arrow(F) dot arrow(n)  dif S = integral.double_(D) arrow(F)(arrow(r)(u,v)) dot (arrow(r_u) times arrow(r_v))  dif A 
  
  $ 
  
- if the surface is a graph of a fucntion $z=g(x,y), (x,y) in D, arrow(F) = (P,Q,R)$,
  then $ 
      integral_(S) arrow(F) dot dif arrow(s) = integral.double_(D) (P,Q,R) dot (-partial_x g, -partial_y g, 1)  dif A   
  $ 
   
 == Stokes' theorem


  Let $F: R^3 -> R^3$ be a vector field on $R^3$ , then $ 
      integral_(C) arrow(F) dot dif arrow(r) = integral.double_(S) "curl"(arrow(F)) dif arrow(s),\ "where" "curl"(arrow(F)) = nabla times arrow(F)  
  $ 


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
    partial_x u = partial_y v, quad partial_y u = -partial_x v $ 

Conversly, if $u$ and $v$ are continuously differentiable on an open set $Omega$ and satisfy the Cauchy-Riemann equations, then $f(z) = u(x,y) + i v(x,y)$ is holomorphic on $Omega$.

In the language of logic, let C be "satisfying cauchy-riemann equations", and H be "function is holomorphic", then $H -> C$. If D is "u and v have continuous partial derivatives with respect to x and y", then $(C "&" D) <-> H$ 


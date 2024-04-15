#set heading(numbering: "1.a")
#set page(margin: (x: 3cm, y: 1cm))
#set text(12pt)
#show math.equation: set text(13pt)
#text(font: "Cambria",size: 14pt,weight: "black")[Brief Theory of Probability, Part 1\
Survey of main ideas and equations]


#line(length:100%, stroke:(thickness: 2pt))
#outline()
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


  == Stokes' theorem

 - for a surface, $ arrow(r)(u,v) = (x(u,v), y(u,v), z(u,v))\ => integral.double_(S) arrow(F) dot  dif arrow(S) = integral.double_(S) arrow(F) dot arrow(n)  dif S = integral.double_(D) arrow(F)(arrow(r)(u,v)) dot (arrow(r_u) times arrow(r_v))  dif A 
  
  $ 
  
- if the surface is a graph of a fucntion $z=g(x,y), (x,y) in D, arrow(F) = (P,Q,R)$,
  then $ 
      integral_(S) arrow(F) dot dif arrow(s) = integral.double_(D) (P,Q,R) dot (-partial_x g, -partial_y g, 1)  dif A   
  $ 
   


  Let $F: R^3 -> R^3$ be a vector field on $R^3$ , then $ 
      integral_(C) arrow(F) dot dif arrow(r) = integral.double_(S) "curl"(arrow(F)) dif arrow(s),\ "where" "curl"(arrow(F)) = nabla times arrow(F)  
  $ 
    
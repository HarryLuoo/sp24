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

  == Gradient, Divergence, Curl
- Nabla operation: $ 
    nabla = (partial)/(partial x)  + (partial)/(partial y)  + (partial)/(partial z) $

- Gradient in 2D cartisian $(r,theta)$ : $ 
    nabla f = (partial f)/(partial r) i + (1/r)(partial f)/(partial theta) j

    $
- Gradient in polar $ 
    nabla f = (partial f)/(partial rho) i + (1/rho)(partial f)/(partial phi) j 
$ 

- Gradient in spherical $ 
    nabla f = partial_rho hat(rho) + hat(phi) 1/rho partial_phi + hat(theta) 1/(rho sin phi) partial_theta 
    $


  == Green's theorem



  == Stokes' theorem
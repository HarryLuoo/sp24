#set math.equation(numbering:"(1)")

=  Equation of Motion: \ Lagragian, Principle of Least Action, and E-L Equation\
 == Larangian: 
- Under the constraint of \ 1)Space and time are homogenous, 2)time is isotropic, the Larangian for a system is given as 
$
L = T - U(r), "where" cases(T = sum_(a=1)^N 1/2 m_a dot(q_a)^2 "sum of KE", "U: potential energy")
$
== E-L equation
For a given functional, $
S = integral_(t_1)^(t_2) L(q, dot(q), t) dif t
$
we could optimize it using the Euler-Lagrange equation, $
d/(dif t) (diff L)/(diff dot(q)) - (diff L)/(diff q) = 0
$
where each EL equation and its solution corresponds to a degree of freedom.\
Upon applying the El equation to a generalized lagrangian, we reveal Newton's second law$
(dif )/(dif t)(diff (1/2 m v^2 - U(r)))/(diff v)=(diff (1/2 m dot(q)^2 - U(r)))/(diff r)
\ =>
m dot(arrow(v))= -(diff U)/(diff q) equiv arrow(F) ("force")
$
== coordinate transformation:
- In cartesian coordinates, $L = 1/2 m (dot(x)^2+dot(y)^2+ dot(z)^2) - U$\ In cylindrical coordinates, $L = 1/2 m (dot(r)^2+r^2 dot(theta)^2+dot(z)^2) - U$\ In spherical coordinates, $L = 1/2 m (dot(r)^2+r^2 dot(theta)^2+r^2 sin^2(theta) dot(phi)^2) - U$

- Note that when taking partial differentiations, we treat each variable and its derivative as two independent variables. Don't ask why... We are doing physics here\
#line(length: 100%)
= Conservation Laws: \ Energy, Momentum, COM, and Angular Momentum\
== Energy:
- Energy is defined as the following, and when the Lagrangian is *homogeneity time*, the energy is conserved.\ 
$
E equiv sum_i dot(q_i) (diff L)/(diff dot(q_i)) -L\
"considering" L= T-U, "we have" #rect()[E = T + U]\ 
$

  - Total energy is also given as$ E = 1/2 mu V^2 + E_i  \ "where" E_i "is internal energy, and" mu "being the total mass"
$

== General momentum: 
conservation of general momentum is from the following conservation $
(diff L)/(diff q_j) =0 => p_j equiv (diff L)/(diff dot(q_j)) ,
$ where $q_j$is a cyclic coordinate, i.e. $L$ is independent of $q_j$.\
  
== Total momentum
 total momentum is defined as the following, and considering the *homogeneity of space*, the momentum is conserved in a closed system. \ If the total momentum of a mechanical system in a given frame of reference is 0, then the said system is at rest relative to that frame. For simplicity's sake, we want to chose our frame of reference in which the total momentum is zero.\ 
$ P equiv sum_a (diff L)/(diff dot(q_a)) = #rect()[$sum_a m_a v_a$] \ "force is also given by" F_j = (diff L)/(diff q_j) \ "sum of all forces in a closed system is 0"
$
== Center of Mass
- Center of mass is defined so that, the velocity of the system as a whole, $V = P slash (sum m_a )$ is the time derivative of the center of mass. $R = sum_a m_a r_a slash (sum m_a)$.\


== Conservation of angular momentum
Angular momentum caractorizes the rotation of the system, and considering the *isotropy of space*, the angular momentum is conserved in a closed system.\ 
$ #rect()[$arrow(L) equiv sum_(a) r_a times p_a$]"is conserved in a closed system"
$
- Angular momentum can be found by differentiating the lagrangian with respect to angular velocity, along the rotation axis z:$
arrow(L_z)= (diff L)/(diff dot(phi_a)) 
$
#line(length: 100%)
= Integration of the equations of motion: Connetcting Energy with motion 
== Motion in 1 dimension
- For a system with DOF=1, and with $(diff L)/(diff t) = 0 $ ( largrangian independent of time, i.e. energy conserved) , we can write the largrangian and total energy as
$ L = 1/2 m dot(x)^2 - U(x), $ 
$ E = 1/2 m dot(x)^2 + U(x) $ <3.eq.enrgy>
@3.eq.enrgy is a differential equation of position and time. Solving this ODE for time gives: 
$ t = sqrt(m/2) integral (dif x) / (E - U(x)) + C $
when given $U(x)$, and by plugging it into @3.eq.enrgy, we can solve for $x(t)$ by substitution. Tricks on sub: when $U(x)$ is of order 1, use u-sub; when it's of order 2, use trig-sub.\
 == Turning points
 #image("potential.png", width: 40%)
For a given potential function $U(x)$, the turning points are the points where the potential energy is equal to the total energy, i.e. $U(x) = E$. At turning points, the system is either just about to move, or just about to stop.\
Only motion where potential is less or equal to total energy is allowed.\
Bounded motion: $[x_1,x_2]$; unbounded motion: $x>x_3$


 == Unbounded Motion:
  When there is a potential well, the system could go into periodic motion with potential energy moving back and forth in the well, and position between $x_1,x_2$. We find period by doubling @3.eq.enrgy:
  $ T(E) = sqrt(2m) integral_(x_1(E))^(x_2(E))(dif x)/(sqrt(E - U(x))) $<3.eq.period>
   where we represent $x_1(E),x_2(E)$ in terms of $E$. \
  When given $U(x)$, we can solve for $x_1(E),x_2(E)$, and then pluging in to @3.eq.period, we can solve for period by integration via subsitution. \
  *Simple Pendulum* in polar coord's has the following:$
  T = 1/2 m l^2 dot(theta)^2 \ U = m g l (1-cos(theta)) \ 
  $
  It's period is given by @3.eq.period. Solving it gives us $
  T(E) = 4 sqrt(l/g) integral_0^(pi/2) (dif u)/(sqrt(1-k ^2 sin^2(u))) \ "where" k = sin(theta_0/2), sin u = 1/k sin(theta_0/2)
  $ <3.eq.pend>
  @3.eq.pend can be simplified by small angle approx into $
  T(E) = 2 pi sqrt(l/g) (1+(theta_0^2/16))
  $
== Effective DOF=1 system
When the largrangian is of the form $L = f(dot(x))- g(x)$, we can see it as a system with effective potential $U_"eff"(x) = g(x) $, and effective kenetic energy $T_"eff"(x) = f(dot(x))$. The effective energy is therefore $E = T_"eff"  + U_"eff"$.\

#line(length: 100%)

= Two body problem
== Problem setup
- The two body problem considers two interacting masses with an interacting potential $U(r_1,r_2)=U(|arrow(r_1)-arrow(r_2)|)$. The lagrangian is given by $ L = 1/2 m_1 dot(arrow(r_1))^2 +1/2m_2 dot(arrow(r_2))^2 - U(|arrow(r_1)-arrow(r_2))|) $
- 
== COM and reletive coordinates, DOF= 6 -> DOF = 2
- Consider the following handy subsitution, $ "Reduced mass" mu& =(m_1 m_2)slash(m_1+m_2) =m _(1) m_2  slash M  ;\ "Center of mass" R& = (m_1 r_1 +m_2 r_2) slash (M);\ "relative positon" arrow(r)& = arrow(r_1)-arrow(r_2) $ <4.eq.sub> \
- Putting the two body system into relative coordinates, and represent masses with reduced mass and COM, we have the following lagrangian: $ L =1/2 M dot(arrow(R))^2 +  1/2 mu dot(arrow(r))^2- U(arrow(r)) $
where the first term involves only the COM motion, and the second term involves only the relative motion.\
- By choosing our frame with the COM at rest and the total momentum zero, our problem is simplified to an  * effective one body problem* with DOF = 2, given by $
L = 1/2 mu dot(arrow(r))^2 - U(arrow(r))
$

== Conservation of Angular Momentum
- Angular momentum is defiined as $arrow(L) = arrow(r) times mu dot(arrow(r)) $, and is conserved here.\
- Knowing $arrow(r) dot arrow(L)=0$, the motion is in the plane perpendicular to $arrow(L)$. We can use polar coordinates to describe the motion, $
L = 1/2 mu (dot(r)^2 + r^2 dot(theta)^2) - U(r)
$<4.eq.polar>
Using EL equation on @4.eq.polar, we get $
(dif )/(dif t) (diff L)/(diff dot(phi)) = (diff L)/(diff phi) \ => arrow(L_z) equiv mu r^2 dot(theta) = "constant" \ ("conservation of angular momentum on z-axis")
$

== 2 body problem in gravitational field
$
L = 1/2 m_1 dot(r_1)^2 + 1/2 m_2 dot(r_2)^2 - [m_1 g z_1 + m_2 g z_2 + U(r)] \ = [1/2 M dot(R)^2 - M g Z +] + [1/2 mu dot(r)^2 - U(r)]
$
where $Z$ is the vertical coordinate of the CM position, $Z = (m_1z_1+m_2z_2)/M$

== Kepler's second Law
We calculate the differential of area swept by particle in polar coordinates, $
dif A = 1/2 r^2 dif phi \ => (dif A)/(dif t) = 1/(2 mu) arrow(L_z) \ arrow(L_z) = 2 mu dot(A) ("constant")
$
This is the Kepler's second law, which states that the area swept by the radius in a given time is constant.

== EOM for two body system
- The total energy: $ 
  E = T + U  &= 1/2 mu dot(r)^2  + 1/2 mu r^2 dot(phi)^2+ U(r)  
  \ &= 1/2 mu dot(r)^2 + U(r)+ (L_z ^2)/(2 mu r ^2)  "(Notice" L_z = mu r ^2 dot(phi) $ <4.eq.t>
solving this ODE by integration gives $
 t(r))=integral (dif r)/(sqrt(2/mu)[E - U(r)- (L_z^2)/(2 mu r ^2)]) + C $

 - Also from $L_z = mu r ^2 dot(phi)$, by integrating with respect to time, we get $
 phi(t) = (L_z)/(mu)integral (dif t)/(r ^2(t))+C'
 $<4.eq.phi>

@4.eq.phi and @4.eq.t describe the relative motion of the two body system in terms of constants ${E,L_z,C,C'}$

== Shape of orbit
- @4.eq.t skipped a step, $
(dif r)/(dif t) = sqrt((2/mu)[E - U(r)- (L_z^2)/(2 mu r ^2)])
$
this equation, combined with our beloved $ L_z = mu r ^2 dot(phi) => dif phi = (L_z)/(mu r ^2) dif t $ we get the equation of orbit: $
dif phi = (L_z)/sqrt(2mu) (dif r)/(r^2 sqrt(E - U(r) - L_z^2/(2mu r^2))) \ 
=> phi = (L_z)/(sqrt(2mu)) integral (dif r)/(r^2 sqrt(E - U(r) - L_z^2/(2mu r^2))) + C
$

== Effective potential and shape of orbit (Only for Attractive Potential)
$ U_"eff"=U(r)+ L_z^2/(2mu r^2); E = 1/2 mu dot(r)^2 + U_"eff"(r)  $
- When $r->infinity$, $U_"eff"->U(r)$, and when $r->0$, $U_"eff"->"centrifutal potential" L_z^2/(2mu r^2)$.\
   
- by graphing the effective potential, and given constraint of total energy E, we can analyze the shape of the orbit:
#image("orbit.png", width: 90%) \
- when $E>0$, the orbit is unbounded, open orbit, hyperbola.\
- when $E < 0$, the orbit is bounded into a potential well, although not neccessarily closed.
- when $E=E_min$, the orbit is circular, $F = -mu (v^2)/(r)$

= The Kepler Problem: a special case of the two body problem
== conditions
$ U(r) = -alpha/r ;  U_"eff"= -alpha/r + L_z^2/(2mu r^2) $
== Conic section orbits
We can proof that the orbit is a conic section given by $
#rect()[$ r(phi) = p/(1+e cos(phi)) $]
 \ "where" cases(p = L_z^2/(mu alpha) , e = sqrt(1+(2E L_z^2)/(mu alpha^2)))
$

== Classifications of orbits based on energy of system E 
- When $E>0, e>1$, the orbit is unbounded, open orbit, hyperbola. $
(x-c)^2/a^2-y^2/b^2
= 1\ cases( a= p/(e^2 - 1)","b = p/sqrt(e^2 - 1)","c = a e, r_"min"=p/(1+e))
$
- when $E=0, e=1$, the orbit is parabola.$
  y^2 = p^2 - 2 x p, \ r_"min" = p/2
  $
- when $E < 0, e<1$, the orbit is closed, ellipse.$
(x+c)^2/a^2+y^2/b^2 = 1,\ cases( a= p/(1-e^2)","b = p/sqrt(1-e^2)","c = a e, r_"min"=p/(1+e)" ; " r_"max" = p/(1-e))
$
- When $E = E_"min", display(f = (mu alpha^2)/(2 L_z^2)), e=0$,  orbit is circular.
  $r(phi) = p = "constant"$

#line(length: 100%)
= More Kepler: Period, Kepler's third law
== Orbit of each body
recall @4.eq.sub, we can exprees the orbit of each body as such after some algebra: $
arrow(r_1)=(m_2)/(m_1+m_2)arrow(r)"  ;  "arrow(r_2)=-(m_1)/(m_1+m_2)arrow(r)
$
- when $m_1 = m_2 => arrow(r_1)=arrow(r)/2, arrow(r_2) = -arrow(r)/2$, COM inside $r_1 sect r_2$
- when $m_1 >> m_2 => arrow(r_1) = arrow(r), arrow(r_2) = 0$, $m_1$ is at rest, $m_2$ orbits $m_1$

== Period of orbit
- $L_z = 2 mu dot(A)$, areal vel. is constant
- Integrating $dot(A)$ over a period,$
A = integral_(0)^(T)dot(A) dif t = (L_z T)/(2mu)
$
Since area swept over a period is the area of the ellipse, we have $
pi a b = (L_z T)/(2mu)  ",letting:" b=sqrt(p a), p=(L_z^2)/(mu alpha) \ => T = (2 pi a^(3 slash 2))sqrt(mu/alpha\ ) $

== Conservation of Laplace-Runge-Lenz vector
$arrow(A)= arrow(v) times arrow(L)- (alpha arrow(r))slash(r)$ is conserved, and is perpendicular to the orbit plane. We can use it to verify : conic sections, eccentricity, and period.\
- conserved quantity: $arrow(A) dot arrow(L)=0, A/alpha = sqrt(1+ (2 E L_z^2)/(mu alpha ^2))$
#line(length: 100%)
=  Orbital Transfer
== Instantaneous Change in velocity
$ (E,L_z) -> (E',L'_z) \ => (e,p)->(e',p') $
if thrust occur when satellite is at angle $phi_0$, orbit orientation can change:
$
r(phi_0)=p/(1+e cos phi_0) = p'/(1+e' cos( phi_0-delta)) $ <7.eq.r>

== Tangential thrust at perigee
#image("tangentialThrust.png", width: 30%)
at $phi=0$, let $v=v_"init", v' = v_"right after", lambda=v'slash v $
$
L_z = mu r_0 v =>L'_z = mu r_0 v' =lambda L_z\ 
p' = lambda^2 p
$
From @7.eq.r, $
p/(1+e)=lambda^2 p/(1-e')=>e' = lambda^2(1+e)-1
$
if $lambda>1$, $e'>e$, the satellite is in a higher, more eliptical orbit. Unbound if $lambda$ big enough\
if $lambda<1$, $e'<e$, the satellite is in a lower orbit.\
== changing between circular orbits
- changing from $R$ to $R'$, two thrusts($lambda_1,lambda_2$) are needed. There is also an intermediate orbit $ r(phi )= p'slash (1+e' cos phi), \ "where " p'=lambda_1^2p, e'= lambda^2_1 - 1 $
changed from indermetiade to final,
$
r(phi = pi) = R' = lambda_2^2 R slash (2-lambda_1^2)\ 
=> lambda_1 = sqrt((2R')/(R+R'))
$
final orbit: $
r(phi)= R'; e'' = 0, p'' = R'\ 
=> p'' = lambda_2^2 p' = p' slash (1 - e')\
=> lambda_2 = sqrt((R+R')/(2R'))
$  
== Verify: 
using Newton 2nd, $
alpha/R^2 = mu v_R^2 / R \
=> v_R = sqrt(alpha/mu R)\
=>V_R'/V_R = sqrt(R/R')
$<7.eq.v>
verify using conservation of angular momentum, $
R v(phi = 0)= R'v(phi = pi), \ V_R' = lambda v(phi=pi)=lambda_2 v(phi=pi)/v(phi=0)lambda_1 v_R\ 
=> v_R'/v_R = sqrt(R/R')
$ agrees with @7.eq.v !!




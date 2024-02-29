#set heading(numbering: "1.I")
#set page(margin: (x: 1cm, y: 1cm))
#set math.equation(numbering:"(1)")

#text(font: "Cambria",size: 14pt,weight: "black")[Brief Mechanics, Part 1\
Survey of main ideas and equations up till Exam 1]
#line(length: 100%, stroke: (thickness: 2pt))
=  Equation of Motion: \ Lagragian, Principle of Least Action, and E-L Equation\
 == Larangian: 
- Under the constraint of \ 1)Space and time are homogenous, 2)time is isotropic, the Larangian for a system is defined as 
$
L = T - U(r), "where" cases(T = sum_(a=1)^N 1/2 m_a dot(q_a)^2 "summation of kenetic energy", "U: potential energy")
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
- In cartesian coordinates, $L = 1/2 m (dot(x)^2+dot(y)^2+ dot(z)^2)$\ In cylindrical coordinates, $L = 1/2 m (dot(r)^2+r^2 dot(theta)^2+dot(z)^2)$\ In spherical coordinates, $L = 1/2 m (dot(r)^2+r^2 dot(theta)^2+r^2 sin^2(theta) dot(phi)^2)$

- Note that when taking partial differentiations, we treat each variable and its derivative as independent variables. Don't ask why...\
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
= Integration of the equations of motion: 
== Motion in 1 dimension
- For a system with DOF=1, and with $(diff L)/(diff t) = 0 $ ( largrangian independent of time, i.e. energy conserved) , we can write the largrangian and total energy as
$ L = 1/2 m dot(x)^2 - U(x), $ 
$ E = 1/2 m dot(x)^2 + U(x) $ <3.equ.enrgy>
@3.equ.enrgy is a differential equation of position and time. Solving this ODE for time gives: 
$ t = sqrt(m/2) integral (dif x) / (E - U(x)) + C $
when given $U(x)$, and by plugging it into @3.equ.enrgy, we can solve for $x(t)$ by substitution. Tricks on sub: when $U(x)$ is of order 1, use u-sub; when it's of order 2, use trig-sub.\
 == Turning points
 #image("potential.png", width: 50%)
For a given potential function $U(x)$, the turning points are the points where the potential energy is equal to the total energy, i.e. $U(x) = E$. At turning points, the system is either just about to move, or just about to stop.\
Only motion where potential is less or equal to total energy is allowed.\
Bounded motion: $[x_1,x_2]$; unbounded motion: $x>x_3$


 == Unbounded Motion:
  When there is a potential well, the system could go into periodic motion with potential energy moving back and forth in the well, and position between $x_1,x_2$. We find period by doubling @3.equ.enrgy:
  $ T(E) = sqrt(2m) integral_(x_1(E))^(x_2(E))(dif x)/(sqrt(E - U(x))) $<3.equ.period>
   where we represent $x_1(E),x_2(E)$ in terms of $E$. \
  When given $U(x)$, we can solve for $x_1(E),x_2(E)$, and then pluging in to @3.equ.period, we can solve for period by integration via subsitution. \
  *Simple Pendulum* in polar coord's has the following:$
  T = 1/2 m l^2 dot(theta)^2 \ U = m g l (1-cos(theta)) \ 
  $
  It's period is given by @3.equ.period. Solving it gives us $
  T(E) = 4 sqrt(l/g) integral_0^(pi/2) (dif u)/(sqrt(1-k ^2 sin^2(u))) \ "where" k = sin(theta_0/2), sin u = 1/k sin(theta_0/2)
  $
  
  
  





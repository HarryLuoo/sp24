= Angular momentum of a rigid body 
== $arrow(L)$ in non-inertial frame 
$ 
    arrow(L) = sum m(arrow(r) times arrow(v)) = sum m [arrow(Omega) r^2 - arrow(r) (arrow(Omega) dot arrow(r))]\
    L_i = 
#rect(inset: 8pt)[
$ display(    I_(i j) Omega_j)$
] quad arrow(L) = I * arrow(Omega)
\    
$ 
If $(x_1x_2x_3)$ are principal axis, $L_1 = I_1 Omega_1, med L_2 = I_2 Omega_2, med L_3 = I_3 Omega_3$

== Free motion of a rigid body 
angular momentum is conserved if no external torque. Motion in inertial COM frame is simplier.

- _ex motion of a symmetric top _ $  
    I_1=I_2=I_3=I,quad tilde(I) = I display(mat(1,0,0;0,1,0;0,0,1))$\   
$arrow(L) = I arrow(Omega) -> dot(arrow(L)) = 0 => dot(arrow(Omega))=0$ Uniform rotation about fixed axis paralle to $arrow(L)$  

- _ex rigid rotor_ $I_1=I_2= sum m x_3^2, quad I_3 = 0$ 

$arrow(L) = I arrow(Omega), quad arrow(Omega) perp x_3$ by geometry
We have $dot(arrow(Omega)) = 0 =>$ Motion is unif in plane perp to $arrow(Omega)$ and that it stays in that plane. 

- _ex asymmetric top_ $I_1=I_2=I_perp eq.not I_3  => tilde(I) = display(mat(I_perp, 0 ,0; 0, I_perp , 0; 0,0, I_3)) $
  $x_3$ is symm. axis, for any orthogonal axes 

= Rigid body EOM
$ 
    cases(dot(arrow(p)) = arrow(F), dot(arrow(L))= arrow(K) "torque") 
$ 

== Euler angles: $psi$ spin, $theta$ nutation, $phi$ precession 
#image("assets/2024-05-06-01-58-03.png", width: 20%)
 $(theta in [0,pi], phi in [0,2pi], psi in [0,2 pi])$ 
 in turns of rotation $R = R(hat(z), phi) R(hat(X),theta) R(hat(Z), psi)$ 
=== The lagrangian in Euler angles
- First: $T= 1/2 (I_1 Omega_1^2 + I_2 Omega_2^2+ I_3 Omega_3^2)$ 
- Rotation in components: $ 
    Omega_1 = dot(phi) sin theta sin psi + dot(theta) cos psi\
    Omega_2 = dot(phi) sin theta cos psi - dot(theta) sin psi\
    Omega_3 = dot(phi) cos theta + dot(psi)\ 
$ 
- $T = 1/2 I_1(dot(phi) sin theta sin psi + dot(theta) cos psi)^2 +  1/2 I_2 (dot(phi) sin theta cos psi - dot(theta) sin psi)^2 + 1/2 I_3 (dot(phi) cos theta + dot(psi))^2$ 
- $L(theta, phi, psi, dot(theta), dot(phi), dot(psi)) = T - U$
=== Free motion of symmetric top in Euler angles
 $I_1 = I_2 = I_perp => quad T=1/2 I_perp ( dot(theta)^2 + dot(phi)^2 sin^2theta) + 1/2 I_3 (dot(phi) cos theta + dot(psi))^2$ 
 
 $Omega_perp = L_z slash I_perp,quad Omega_3 = L_z cos theta slash I_3 quad$
 E-L -> $  
 theta: med (dif)/(dif t)  I_perp dot(theta) = I_perp sin theta cos theta med dot(phi) ^2 - I_3 dot(phi) sin theta (dot(phi) cos theta +dot(psi))\
phi: med (dif )/(dif t) (I_perp dot(phi) sin^2theta + I_3 cos theta (dot(phi) cos theta + dot(psi))) = 0\
psi: med (dif)/(dif t) I_3 (dot(phi) cos theta + dot(psi)) = 0\
 $ choosing $hat(z)$ along the angular momentum, we have $L_3 = L_z cos theta = I_3Omega_3 = I_3 (dot(phi)cos theta + dot(psi))$\
 $=> dot(L)_3 = "const" =>theta = "const"$ $ quad Omega_3 = (L_z cos theta)/( I_3)$ $ quad dot(phi) = (L_3)/(I_perp cos theta) = (L_z)/(I_perp) = "const"$      
 - _ex heavy symmertic top with one pt fixed_
  By paralle axis thm, $I'_(i j)  I_(i j) + M (l^2 delta_(i j) - l_i l_j)$

  $=> I'_perp = I_perp + M l^2, quad I'_3 = I_3, quad U = m g Z = M g l cos theta$
  
  $=> L = T-U = 1/2 I'_perp (dot(theta)^2 + dot(phi)^2 sin^2theta) + 1/2 I_3 (dot(psi) + dot(phi) cos theta)^2 = M g l cos theta$ \
  E-L : $ L_z=p_phi = (I'_perp sin^2theta + I_3 cos^2theta)dot(phi) quad "const"\
  L_3=p_psi = I_3 (dot(psi) + phi cos theta)quad"const"
  $    
Considering energy conservation$ E = T + U => quad underbrace(E - (L_3^2)/(2I_3) - M g l, E' )= 1/2 I'_perp dot(theta)^2 + underbrace(1/(2 I'_perp) (L_z - L_3 cos theta)^2/(sin^2theta) - M g l (1- cos theta), U_"eff" (theta) )
$  effective 1 dof problem. recognizing $ dot(theta) = (dif theta)/(dif t) => quad t = integral (d theta)/(sqrt(2[E - U_"eff" (theta)] slash I'_perp)   $ 

Considering U_eff: when $ theta = 0, L_z = L_3$when $theta approx 0$ $  => quad U_"eff"  approx ((L_3^2)/(8 I'_perp) - (M g l)/(2))theta^2$

Motion about $theta = 0 $ stable if $L_3^2 > 4 I'_perp M g l => Omega_3^2 > 4 I'_perp M g l slash I_3^2quad$ , or stable if sping ab. symm. axis is fast enough.

- Nutuation: cosider $dot(phi) = L_3/I'_perp ((L_z slash L_3)-( cos theta))/(sin^2theta) = L_3/ I'_perp f(theta)$ 
  #image("assets/2024-05-06-12-26-58.png", width: 70%)
  #image("assets/2024-05-06-12-27-08.png", width: 70%)
considering the sign and trends of $f(theta)$ given constrains on theta, we can differentiate different nutation motion. If $theta_0$ in graph 2 is out of range, the nutation is smooth; if $theta_0$ is in range, the nutation is oscillatory(will change sign and spin in spiral.); if $theta_0$ is on the  endpoint of our constrained range, the nutation is spiky and "not smooth" at  points. 


== Euler equations
set body frame $(X,Y,Z) = (hat(e)_1^0,hat(e)_2^0,hat(e)_3^0$, space frame $(x_1,x_2,x_3) =(hat(e)_1,hat(e)_2,hat(e)_3)$
Set any vector $arrow(A)= sum A_i^0 hat(e)_i^0 = sum A_i hat(e)_i $ By magic of vec analysis, $ 
( (dif arrow(A))/(dif t) )_"Space" = ((dif arrow(A))/(dif t))_"Body" + arrow(Omega) times arrow(A)_"Space"
$  
When applied to $ ((dif arrow(L))/(dif t))_"Space" =  arrow(Kappa) = ( (dif arrow(L))/(dif t) )_"body" + arrow(Omega) times arrow(L)$, recognizing $L_i= I_i Omega_i$:
$ 
    I_1 dot(Omega)_1 + (I_3 - I_2) Omega_2 Omega_3 = K_1\
    I_2 dot(Omega)_2 + (I_1 - I_3) Omega_3 Omega_1 = K_2\
    I_3 dot(Omega)_3 + (I_2 - I_1) Omega_1 Omega_2 = K_3\ 
$ $K_i = 0$ if $arrow(L)$ is conserved on $i$ axis.
- _ex symmetric top_ $I_1=I_2= I, arrow(K) =0$
  $quad (dot(Omega)_1 + (I_3-I_1)/(I_perp) Omega_2 Omega_3 = 0;med 
      dot(Omega)_2 + (I_1-I_3)/(I_perp) Omega_3 Omega_1 = 0; med
      dot(Omega)_3 = 0)$ 
  let $omega = ((I_3 - I_perp)slash(I_perp)) Omega_3 => 
#rect(inset: 4pt)[
$ display((Omega_1 = A cos omega t; med Omega_2 = -1/omega dot(Omega)_1 = +A sin omega t))$
]
 $  


 = Motion in non-inertial frame
 - Set non-inertial frame with velocity $arrow(V)(t),med arrow(A) = dot(arrow(V)), quad arrow(v) = arrow(v)' + arrow(V)(t)$ where $arrow(v)'$ is velocity w.r.t. non-inertial frame.

lagrangian $L' = 1/2 m v'^2 - m arrow(r)' dot arrow(A) - U$ , using E-L eq:  $ m dot(arrow(v))' = - (diff U)/(diff arrow(r)') - m arrow(A)$  

- _ex pendulum in acc. car_ $quad m dot.double(arrow(r)) = arrow(T) + m arrow(g) - m arrow(A) 
$ ,

 finding equil. angle: $ arrow(T) = -m (arrow(g)- arrow(A)) = -m arrow(g)_"eff"$ , then use geometry between $arrow(g) , -arrow(A) => tan phi_0 = A/g$. Oscillation freq. $omega = sqrt(g_"eff"slash l)$

 == Motion in rotating frame
 Set rotation with $arrow(Omega)$, $L = 1/2 m v^2 + arrow(m v) dot (arrow(Omega) times arrow(r)) + 1/2 m (arrow(Omega) times arrow(r))^2 - m arrow(r) dot arrow(A)- U$  

 Using E-L, 
 $#rect(inset: 8pt)[
$display( m dot(arrow(v)) = - (diff U)/(diff arrow(r)) - m arrow(A) + 2 m (arrow(v) times arrow(Omega)) + m arrow(Omega) times (arrow(r) times arrow(Omega)) + m arrow(r) times dot(arrow(Omega)))$
] $ 
- Namely, $ 
    m dot(arrow(v)) = - (diff U)/(diff arrow(r)) + arrow(F)_"cor" + arrow(F)_"cent"\
    arrow(F)_"Cor" = 2 m (arrow(v) times arrow(Omega)), quad arrow(F)_"cent" = m arrow(Omega) times (arrow(r) times arrow(Omega))= m(arrow(Omega) times arrow(r)) times arrow(Omega)
$ 


- _ex free fall on earth, centrifugal force  _  $ med arrow(F) =arrow(g)_0 + m Omega^2 R sin theta hat(rho) => arrow(g)_"eff" = arrow(g_0) + Omega^2 R sin theta hat(rho)$  

- _ex free fall, coriolis force_ $quad dot(arrow(v)) = arrow(g) + 2 arrow(v) times arrow(Omega), quad arrow(Omega) = Omega sin theta hat(y) + Omega cos theta hat(z)$ 

In components, $ 
    arrow(v_x) = 2 Omega ( v_y cos theta - v_z sin theta)\
    arrow(v_y) = -2 Omega v_x cos theta\
    arrow(v_z) = 2 Omega v_x sin theta - g 
$ Free fall EOM: $arrow(R) = integral v  dif r $, consider $arrow(v) = arrow(v_1) + arrow(v_2) = -arrow(g) + 2 arrow(v_1) times arrow(Omega)+2 arrow(v_2) times arrow(Omega)$  where approximately, $arrow(v_2) = 2(arrow(v_0) - g t hat(z) ) times arrow(Omega)$. If no initial velocity, integrating velocity in x components gives, 
$x(t) = 1/3 g Omega ((2h)/(g))^(3 slash 2) sin theta $ 


- _ex foucaults pendulum_
  EOM $  
      
  $ 
  
  #figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("assets/2024-05-06-15-05-32.png", width: 50%),
        $arrow(r) = l sin  beta cos alpha hat(x) +  l sin beta sin alpha hat(y) + (l - l cos beta) hat(z)\ 
      arrow(T) = - T sin beta cos alpha hat(x) - T sin beta sin alpha hat(y) + T cos beta hat(z)\
      arrow(Omega) = Omega sin theta hat(y) + Omega cos theta hat(z)$ 
, 
    ))\
$ 
    cases(T = m g, m dot.double(x) = T_x + 2 m hat(x) dot (dot(arrow(r)) times arrow(Omega)) = - (m g x)/l + 2 m Omega dot(y) cos theta,
    m dot.double(y) = -(m g y)/(l) - 2 m Omega dot(x) cos theta)
$ letting $omega^2 = g/l,Omega_z = Omega cos theta, quad
#rect(inset: 8pt)[
$ display(eta = x + i y = e^(i gamma t))$
]
$
$ 
    dot.double(x) + omega^2 x = 2 Omega_z dot(y), dot.double(y) + omega^2 y = -2 Omega_z dot(x) \
    gamma = - Omega_z plus.minus sqrt(omega^2 - Omega_z^2) \
    eta(t) = a e^(- i Omega_z t) cos omega t\
    =>cases(x = a cos Omega_z t cos omega t, y = a sin Omega_z t cos omega t) 
$ 
 
= Hamiltonian Mechanics
$H(q,p,t) = sum_(j=1)^(n) p_j dot(q)_j - L(q,dot(q), t) quad $ 
1D: $H = (p^2)/(2 m) + U(x)$ 
- Hamilton's equation
  $dot(q)_i = (diff H)/(diff p_i) quad dot(p)_i = - (diff H)/(diff q_i)  $ 
- _ex particle in polar_ $ quad L = T - U = 1/2 m (dot(r)^2 + r^2 dot(phi)^2) - U(r,phi) => quad p_r = (diff L)/(diff dot(r)) = m dot(r), med  p_phi = (diff L)/(diff dot(phi)) = m r^2 dot(phi)  $ 
 $ 
    H = p_r dot(r) + p_phi dot(phi) - L = (p_r^2)/(2m)+(p_phi^2)/(2 m r^2) => quad dot(r) = (diff H)/(diff p_r) = p_r/m, quad dot(phi) = (diff H)/(diff p_phi) = p_phi/(m r^2) \ dot(p)_r = -(diff H)/(diff r) = (p_phi^2)/(m r ^3) - (diff U)/(diff r), quad dot(p)_phi = -(diff H)/(diff phi) = - (diff U)/(diff phi)    
$ 
== Phase space
- _ex harmonic oscillator_ $H = (p^2)/(2 m) + (1/2) m omega^2 x^2, quad omega = sqrt(k/m) $ 
  $ 
    {dot(x) = (diff H)/(diff p) = p/m, quad dot(p) = - (diff H)/(diff x) = - m omega^2 x}=> quad {
    dot(q) = p/m, quad dot(p) = - m omega^2 x}
    $
$q(t_0+delta t) = q(t_0)+ dot(q) delta t = q_0 + p/m delta t; quad p(t_0 + delta t) = p(t_0) + dot(p) delta t = p_0 - m omega^2 q delta t$
parametric ellipse in phase space. 

== Liouville's thm 
volume of  a region op phase space is conserved under time evolution, when boundary of volume and all pts inside move along their orit for some amount of time.

== Poisson bracket
Time evolution of an observable $A(q,p,t)$: $ (dif A)/(dif t) = (diff A)/(diff t) + underbrace(sum_(i=1)^(n) (diff A)/(diff q_i) (diff H)/(diff p_i) - (diff A)/(diff p_i) (diff H)/(diff q_i), eq.triple {A,H})     $  
 
 More generally, for $A (q,p,t), quad B (q,p,t)$ $ 
      {A,B} = sum_(i) (diff A)/(diff q_i) (diff B)/(diff p_i) - (diff A)/(diff p_i) (diff B)/(diff q_i)      
 $ 
 notice, ${A,p_i} = (diff A)/(diff q_i), {A,q_i} = - (diff A)/(diff p_i)  $ 

- When $ (dif C)/(dif t) = (diff C)/(diff t)+ {C,H} = 0  $ then $C(q,p,t)$ is conserved.

== Cononical transformation 
consider transformation $q_i -> Q_i (q,t)$ the transformation is canonical iff the transformation leave the form of Hamilton's eq. unchanged.
$ 
   cases( dot(q) = (diff  H )/(diff p) , dot(p) = - (diff H)/(diff q) )=>
   cases dot(Q) = (diff K)/(diff P), dot(P) = - (diff K)/(diff Q)
$ where $K(Q,P,t)$ new Hamiltonian. 

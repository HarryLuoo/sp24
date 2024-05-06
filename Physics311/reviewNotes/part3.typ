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

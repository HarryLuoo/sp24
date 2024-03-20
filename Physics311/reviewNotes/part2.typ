#set math.equation(numbering:"(1)")

= Small Oscillations
- Motion near a point of stable equilibrium.
== DOF= 1 (one dimension)
- For a system of DOF = 1, with potential $U(q)$:
  - *stable equilibrium* at $U(q)_min$ where $F = -(dif U)/(dif q  )= 0 $
    - restoring force for small displacements $q-q_0$ is $F = -(dif U(q-q_0))/(dif q)$
- *Unstable equilibrium* at $U(q)_max$ where $F = -(dif U)/(dif q  )= 0 $ as well.
  
- Consider small deviation from point of stable equilibrium, we use taylor expansion to show that it is really a small displacement. that is,
$
U(q) approx U(q_0) + (dif U(q_0))/(dif q)(q-q_0) + (1/2)(dif^2 U(q_0))/(dif q^2)(q-q_0)^2 + ...\
"while"  (dif U(q_0))/(dif q)(q-q_0) = 0
$
letting $x = q- q_0$, we have $
cases(U(x) = U(q_0) + (1/2)(dif^2 U(q_0))/(dif q^2)x^2, 
"also" U(x) = (1/2)k x^2.)
=> #rect(inset: 8pt)[ $ display(k = (dif^2 U(q_0))/(dif q^2) > 0 )$ ]  
$
we get KE, while choosing $U(q_0) = 0$:\
 $ T = 1/2 a(q)^2 dot(q)^2 = 1/2 a(q_0+x)dot(x)^2 approx 1/2 m dot(x)^2 , "letting" m = a(q_0) \ =>
L = T - U = 1/2 m dot(x)^2 - 1/2 k x^2 $ <eq.1DSO.largrangian>

=== EOM for DOF = 1 small Oscillations
using EL on @eq.1DSO.largrangian, we can get the EOM for one dimensional small Oscillations:
$
m dot.double(x) = -k x \ => dot.double(x) + omega_0 ^2x = 0, "where" #rect(inset: 8pt)[ $ display(omega_0 = sqrt(k/m) ) "freq of osc."$ ]  
$

by magic of ODE, EOM reduces down to: $
#rect(inset: 8pt)[$x(t) = C_1 cos(omega_0 t) + C_2 sin(omega_0 t)$] ",where"  C_1,C_2 "are constants"
$
by trig magic, this could also be written as $
x(t ) = a cos (omega_0 t + phi),  " where" cases(a = sqrt(C_1^2 + C_2^2) &"amplitude of oscillation" , omega_0 &"frequency of oscillation", tan phi = C_2 slash C_1 &"phase corresponding to origin of time")
$

=== energy for 1D small Oscillation
checking $(diff L )/(diff t) = 0 =>$  energy-conservation: 
$ 
E = T + U &= 1/2 m dot(x)^2 + 1/2 k x^2\ & = 1/2 m a^2 omega_0^2  , [ " constant"]
$

=== Damped 1D oscillation, and Complex representation
[_I dont like the how the subscripts are used in this lecture but I guess this is what we are stuck with._]\

- when there is damping (friction, resistence, etc) $F_"fric" = - beta dot(x)$, the EOM becomes:$ 
dot.double(x) + 2 gamma dot(x) + omega_0^2 x = 0,\ "where" 2 gamma = beta/m , omega_0 = sqrt(k/m) $ <eq.1DSO.damped>
with ansatz $x(t) = e ^(r t), dot(x) = r e ^(r t ), dot.double(x) = r^2 e ^(r t) $, the solution to @eq.1DSO.damped is:
$
r^2 + 2 gamma r + omega_0^2 = 0,\ "which has solution" r_+, r_- = -gamma plus.minus sqrt(gamma^2 - omega_0^2)\
=>x(t) = C_1 e^(r_+ t) + C_2 e^(r_- t),\ 
$<eq.1DSO.sol>
notice the r subscripts here: $r_+ ,  r_-$ 

=== underdamped, overdamped, and critically damped
Recall from your ODE class...

@eq.1DSO.sol has the following 3 cases, each with different physical interpretation:

+ underdamped: $ gamma < omega_0 => "2 complex roots:  " cases( r_(plus.minus) = - gamma plus.minus i sqrt(omega_0^2 - gamma ^2) = - gamma plus.minus i omega, omega = sqrt(omega_0^2 - gamma^2) ) $
  
The EOM is thus a linear combination of two complex expoentials:
$
x(t) &= e ^(-gamma t)(C_1 e ^(i omega t) + C_2 e ^(-i omega t)) \
     &= e ^(-gamma t)(A cos(omega t) + B sin(omega t)) \
     &&"-- said Euler,where" cases(A = C_1 + C_2, B = i(C_1 - C_2))\
     &= a e ^(- gamma t) cos (omega t + alpha)\
     &&a, alpha "are constants"
$
The solution is a damped oscillation with frequency $omega$, and amplitude expoentially decaying with time

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
 $ T = 1/2 a(q)^2 dot(q)^2 = 1/2 a(q_0+x)dot(x)^2 approx 1/2 m dot(x)^2 , "letting" #rect(inset: 8pt)[ $ display(m = a(q_0))$ ] \ =>
L = T - U = 1/2 m dot(x)^2 - 1/2 k x^2 $ <eq.1DSO.largrangian>

== EOM for DOF = 1 small Oscillations
using EL on @eq.1DSO.largrangian, we can get the EOM for one dimensional small Oscillations:
$
m dot.double(x) = -k x \ => dot.double(x) + omega_0 ^2x = 0, "where" #rect(inset: 8pt)[ $ display(omega_0 = sqrt(k/m) )$ ]  
$

by magic of ODE, EOM reduces down to: $
x(t) = C_1 cos(omega_0 t) + C_2 sin(omega_0 t) ",where" #rect(inset: 8pt)[ $C_1,C_2 "are constants"$ ] 
$
by trig magic, this could also be written as $
x(t ) = a cos (omega_0 t + phi) \ "where" [ a = sqrt(C_1^2 + C_2^2), "amplitude of oscillation" \ omega_0 = "frequency of oscillation"\ "and" tan phi = C_2 slash C_1, "phase corresponding to origin of time"  ]
$

- checking $(diff L )/(diff t) = 0$ this is an energy-conserved system, meaning that: $
E = T + U = 1/2 m dot(x)^2 + 1/2 k x^2 = 1/2 m a^2 omega_0^2  [ "  constant"]\ omega = sqrt(k/m) = "frequency of oscillation"
$

#set math.equation(numbering:"(1)")
#import "@preview/wrap-it:0.1.0": wrap-content
#pagebreak()
= Small Oscillations
- Motion near a point of stable equilibrium.
== DOF= 1 (one dimension)
- For a system of DOF = 1, with potential $U(q)$:
  - *stable equilibrium* at $U(q)_min$, upward parabola, where $F = -(dif U)/(dif q  )= 0 $
    - restoring force for small displacements $q-q_0$ is $F = -(dif U(q-q_0))/(dif q)$
- *Unstable equilibrium* at $U(q)_max$, downward parabola, where $F = -(dif U)/(dif q  )= 0 $ as well.
  
- Consider small deviation from point of stable equilibrium, we use taylor expansion to show that it is really a small displacement. that is,
$
U(q) approx U(q_0) + (dif U(q_0))/(dif q)(q-q_0) + (1/2)(dif^2 U(q_0))/(dif q^2)(q-q_0)^2 + ...\
"while"  (dif U(q_0))/(dif q)(q-q_0) = 0
$
letting $x = q- q_0$, we have $
cases(U(x) = U(q_0) + (1/2)(dif^2 U(q_0))/(dif q^2)x^2, 
 "putting into the form of" U(x) = U(x_0) +(1/2)k x^2.)\
=> #rect(inset: 8pt)[ $ display(k = (dif^2 U(q_0))/(dif q^2) > 0 )$ ]  
$
we get KE, while choosing $U(q_0) = 0$:\
 $ T = 1/2 a(q)^2 dot(q)^2 = 1/2 a(q_0+x)dot(x)^2 approx 1/2 m dot(x)^2 , "letting" m = a(q_0) \ =>
#rect(inset: 8pt)[ $ display(L = T - U = 1/2 m dot(x)^2 - 1/2 k x^2 )$ ]  $ <eq.1DSO.largrangian>

=== EOM for DOF = 1 small Oscillations
using EL on @eq.1DSO.largrangian, we can get the EOM for one dimensional small Oscillations:
$
m dot.double(x) = -k x \ => dot.double(x) + omega_0 ^2x = 0, "where" #rect(inset: 8pt)[ $ display(omega_0 = sqrt(k/m) ) "freq of osc."$ ]  
$

by magic of ODE, EOM reduces down to: $
#rect(inset: 8pt)[$x(t) = C_1 cos(omega_0 t) + C_2 sin(omega_0 t)$] \ "where"  C_1,C_2 "are constants"
$
by trig magic, this could also be written as $
x(t ) = a cos (omega_0 t +alpha),\  " where" cases(a = sqrt(C_1^2 + C_2^2) &"amplitude of oscillation" , omega_0 &"frequency of oscillation", tan alpha = C_2 slash C_1 &"phase at t=0" )
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

+ underdamped: 
  $ gamma < omega_0 => "2 complex roots:  " cases( r_(plus.minus) = - gamma plus.minus i sqrt(omega_0^2 - gamma ^2) = - gamma plus.minus i omega, omega = sqrt(omega_0^2 - gamma^2) ) $
  
  The EOM is thus a linear combination of two complex expoentials:
  $
  x(t) &= e ^(-gamma t)(C_1 e ^(i omega t) + C_2 e ^(-i omega t)) \
     &= e ^(-gamma t)(A cos(omega t) + B sin(omega t)) \
     &"-- where" cases(A = C_1 + C_2, B = i(C_1 - C_2))\
     &= a e ^(- gamma t) cos (omega t + alpha)\
     &a, alpha "are constants"
  $
  "The solution is a damped oscillation with frequency$omega$, and amplitude expoentially decaying with time."
  
  

+ Overdameped
 
  $ 
  gamma > omega => x(t) = c_1e^(-gamma+sqrt(gamma^2-omega^2)t )+c_2e^(-gamma-sqrt(gamma^2-omega^2) t)  $ 
  When 
  $
  gamma >> omega_0, => display(cases(gamma+sqrt(gamma^2-omega_0^2) approx 2gamma, gamma - sqrt(gamma^2-omega^2)=(omega^2)/(2gamma)))\
  x(t) = c_1 e^(-2gamma t)+ c_2e^((-omega_0^2slash 2gamma)t) 
  $ 
  
+ Critically damped
  $ gamma = omega_0 => x(t) = c_1e^(-gamma t) + c_2 t e^(-gamma t)  
  $ 
#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("damped.png",width: 70%),
        image("overdamped.png",width: 80%),
    ))
#line(length: 100%)


== Forced Oscillations
When external force (F) is applied to the system, the largrangian becomes
$ 
    L = 1/2 m dot(x)^2 - 1/2 k x^2 + F(t)x \
    "EL"=> dot.double(x) + omega_0^2x = F(t)/m, "where" omega_0 = sqrt(k/m)
$ <eq.forced>


- Example: Simple pendulum with moving pivot
#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("pivotPendulum.png",width: 70%),
        $ 
      cases(x = X+l sin phi,
      y = l cos phi)
      => cases(dot(x)=dot(X)+l dot(phi) cos phi,
      dot(y) = -l dot(phi) sin phi)\
      => L = T-U $ ,
    ))
    $ L= 1/2 m l^2 dot(phi)^2-m g l(1-cos phi)- m l dot.double(X)sin phi\
      "Expand ab." phi = 0 => L = 1/2 m l^2 dot(phi)^2 - 1/2 m g l phi^2 -  m l dot.double(X) phi\ 
            "EL" =>
#rect(inset: 8pt)[ $ display( dot.double(phi) + omega_0^2 phi = -dot.double(X)/l  ",where" omega_0 = sqrt(g/l) )$ ] $
  
=== reintroducing damping via external forcing
$ dot.double(x)+ 2gamma dot(x)+omega_0^2x = f(t), f(t)=F(t)/m $
When damping $f(t) = f_0 cos(Omega t)$, solution via complex number:
$ 
    dot.double(z)+2gamma dot(z) + omega_0^2 = f_0 e^(i Omega t) \
    "ansatz" z(t) = z_0 e^(i Omega t)=> z_0=(f_0)/(omega_0^2+2i gamma Omega + Omega_0^2) \ 
#rect(inset: 8pt)[ $ display(    z_0=a(Omega) cos(Omega t+ delta(Omega))f_0 )$ ]  
    "is a partcular solution,where"\ cases(a(Omega) = 1/(sqrt((omega_0^2-Omega^2)^2 + (2gamma Omega)^2)), delta(Omega) = arctan(2gamma Omega/(omega_0^2-Omega^2)) )
$ 
We can study the properties of the system by looking at the amplitude and phase of the solution.
- Amplitude: $ a(Omega) = 1/(sqrt((omega_0^2-Omega^2)^2 + (2gamma Omega)^2)) $,
  when $gamma << omega_0$, response strongest and amplitude largest when $omega_r = omega_0$. 

#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("response.png",width : 70%),
        image("phaseLag.png",width: 70%),
    ))
- Phase lag: $tan delta(Omega) = 2gamma Omega/(Omega^2-omega_0^2)$ 
  
    in phase as $Omega -> 0$, and out of phase as $Omega -> omega_0$.

- Genral solution to sinusoidal forcing: $ x(t) = a(Omega)f_0cos(Omega t + delta(Omega)) + a_0e^(-gamma t) cos(omega t+ alpha) \ ->^(t>1/r) a(Omega)f_0cos(Omega t + delta(Omega)) $ Forgets initial condition after time.
- Power obsorbed by oscillation
  
  $p = F dot(x) = m f dot(x)$
  Avg power $ 
      P_"avg" = 1/T integral_(0)^(T) m f dot(x) dif t = -1/2 m f_0 a(Omega) Omega sin delta(Omega)\
      P(Omega) = gamma m f_0^2Omega^2 a^2(Omega)
  $ 
  Absorption around resonance frequency $Omega = omega_0+epsilon$ is maximum:
  $ 
      P=(gamma m f_0^2)/(4(epsilon^2+gamma^2)) approx (m f_0^2)/(4gamma)
  $ 
  
  

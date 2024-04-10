#set math.equation(numbering:"1",)
#import "@preview/wrap-it:0.1.0": wrap-content

= Small Oscillations
- Motion near a point of stable equilibrium.
== DOF= 1 (one dimension)
- For a system of DOF = 1, with potential $U(q)$:
  - *stable equilibrium* at $U(q)_min$, upward parabola, where $F = -(dif U)/(dif q  )= 0 $
    - restoring force for small displacements $q-q_0$ is $F = -(dif U(q-q_0))/(dif q)$
- *Unstable equilibrium* at $U(q)_max$, downward parabola, where $F = -(dif U)/(dif q  )= 0 $ as well.
  
- Consider small deviation from point of stable equilibrium, we use taylor expansion to show that it is really a small displacement. that is,
$
U approx U(q_0) + (dif U(q_0))/(dif q)(q-q_0) + (dif^2 U(q_0))/(2 dif q^2)(q-q_0)^2\
"while"  (dif U(q_0))/(dif q)(q-q_0) = 0
$
letting $x = q- q_0$, we have $
cases(U(x) = U(q_0) + (1/2)(dif^2 U(q_0))/(dif q^2)x^2, 
 "putting into the form of" U(x) = U(x_0) +(1/2)k x^2.)\
=> #rect(inset: 8pt)[ $ display(k = (dif^2 U(q_0))/(dif q^2) > 0 )$ ]  
$
we get KE, while choosing $U(q_0) = 0$:\
 $ T = 1/2 a(q)^2 dot(q)^2 = 1/2 a(q_0+x)dot(x)^2 approx 1/2 m dot(x)^2 ,  =>^(m = a(q_0))\
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
  $ gamma < omega_0 => "2 complex roots:  " cases( r_(plus.minus) = - gamma plus.minus i sqrt(omega_0^2 - gamma ^2)\ = - gamma plus.minus i omega, omega = sqrt(omega_0^2 - gamma^2) ) $
  
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
  gamma > omega => x(t) =\ c_1e^(-gamma+sqrt(gamma^2-omega^2)t )+c_2e^(-gamma-sqrt(gamma^2-omega^2) t)  $ 
  $
  "when"gamma >> omega_0, => display(cases(gamma+sqrt(gamma^2-omega_0^2) approx 2gamma, gamma - sqrt(gamma^2-omega^2)=(omega^2)/(2gamma)))\
  x(t) = c_1 e^(-2gamma t)+ c_2e^((-omega_0^2slash 2gamma)t) 
  $ 
  
+ Critically damped
  $ gamma = omega_0 => x(t) = c_1e^(-gamma t) + c_2 t e^(-gamma t)  
  $ 
#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("damped.png",width: 60%),
        image("overdamped.png",width: 60%),
    ))
#line(length: 100%)


=== Forced Oscillations
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
        image("pivotPendulum.png",width: 50%),
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
- Amplitude: $ a_((Omega)) = 1/(sqrt((omega_0^2-Omega^2)^2 + (2gamma Omega)^2)) $,
  when $gamma << omega_0$, response strongest and amplitude largest when $omega_r = omega_0$. 

#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("response.png",width : 50%),
        image("phaseLag.png",width: 50%),
    ))
- Phase lag: $tan delta(Omega) = 2gamma Omega/(Omega^2-omega_0^2)$ 
  
    in phase as $Omega -> 0$, and out of phase as $Omega -> omega_0$.

- Genral solution to sinusoidal forcing: $ x(t) = a(Omega)f_0cos(Omega t + delta(Omega)) + a_0e^(-gamma t) cos(omega t+ alpha) \ ->^(t>1/r) a(Omega)f_0cos(Omega t + delta(Omega)) $ Forgets initial condition after time.
- Power obsorbed by oscillation
  
  $p = F dot(x) = m f dot(x)$

  Avg power of oscillation $ 
      P_"avg" = 1/T integral_(0)^(T) m f dot(x) dif t = -1/2 m f_0 a(Omega) Omega sin delta(Omega)\ "simplifies to"
      P_"avg" (Omega) = gamma m f_0^2Omega^2 a^2_((Omega))
  $ 
  Absorption around resonance frequency $Omega = omega_0+epsilon$ is maximum:
  $ 
      P=(gamma m f_0^2)/(4(epsilon^2+gamma^2)) approx (m f_0^2)/(4gamma)
  $ 
  
== Oscillations DOF>1
For a system with n DOF: $q=(q_1,q_2,...,q_n),"PE"=U(q)$
- Stable equilibrium $(diff U(q))/(diff q_i)mid(|_(q=0))  $ 
=== Example: Oscillation with 2 mass and 3 springs
#let EOM = $L = 1/2 m dot(x_1) +1/2 m dot(x_2) - 1/2 k x_1^2\ - 1/2 k x_2^2 - 1/2 k' (x_1-x_2)^2$

#figure(
  grid(
    columns: 3,     // 2 means 2 auto-sized columns
    gutter: 1mm,    // space between columns
    image("2m3s.png",width : 50%),
    EOM, align: left,$quad quad quad quad quad quad$,
    ))
EOM: $ 
    M dot dot.double(arrow(x)) = -K arrow(x) " , where" M = mat(m,0;0,m),\ arrow(x) = mat(x_1;x_2), K = mat(k+k',-k';-k',k+k')\
$ 
ansatz: $arrow(x)="Re"[arrow(a)e^(i omega t) ]$ Then the EOM eq becomes solving the eigenvalue problem: $ 
    det mat(omega^2 M - K) = 0\
    => cases(omega_-^2=k/m, omega_+^2=(k+2k')/m) cases(arrow(x_-)= a_- mat(1;1)cos(omega_- t + delta_-), arrow(x_+)= a_+ mat(1;-1)cos(omega_+ t + delta_+))
$ with constants $a_-,a_+,delta_-,delta_+$.

=== New Coords
$ 
    cases(Q_1=sqrt(m/2)(x_1+x_2) , Q_2=sqrt(m/2)(x_1-x_2))\ 
    =>L = 1/2 (dot(Q_1)^2 + dot(Q_2)^2) - 1/2 (omega_-^2 Q_1^2 + omega_+^2 Q_2^2)\ =>^("E-L") dot.double(Q_1) = -omega_-^2 Q_1, dot.double(Q_2) = -omega_+^2 Q_2
$ Decoupled oscillators with coords $Q_1,Q_2$.

=== General Coords
for general coords $q_i$, let $x_i = q_i-q_i^((0))$ 
$ 
    U=1/2 sum_(i,j)k_(i j)x_i x_j,quad k_(i j) = k_(j i)= (diff ^2U(q))/(diff q_i partial q_j)  "symm mat"\    
    T = 1/2 sum_(i,j)m_(i j)dot(x_i)dot(x_j), quad m_(i j) = m_(j i) = a_(i j) (q^((0)))\  
$ 
the largrangian, in Matix form:
$ 
    L = 1/2 dot(arrow(x))^T dot M dot dot(arrow(x)) - 1/2 arrow(x)^T dot K arrow(x) ==>^("EL") (omega^2M-K)dot arrow(a) = 0 $ <eq.Oscillation.matrix>
$ =>det (omega^2M -K)=0$ Solving the det for omega gives the normal freq (Eigenvalues)of system $omega_alpha^2$ . 
plug in Evalue into @eq.Oscillation.matrix for eigenvec(normal modes) $arrow(a^alpha)$ of system.
- General motion $ 
    x_i (t) = sum_(alpha)a^alpha_i"Re"[C_alpha e^(i omega_alpha t) ]   
$ 
- EXAMPLE: Normal freq is given $ omega={0,sqrt(2)omega_0,sqrt(3) omega_0 }.\ omega=sqrt(2)omega_0 => a_1=-a_3=-a_2 = a e^(i delta) =>\ arrow(theta)= a mat(1,-1,-1)^T cos(sqrt(2) omega_0 t + delta)\  
  omega=sqrt(3 omega_0) => a_1=0, a_2=-a_3 = a e^(i delta) =>\ arrow(theta)= a mat(0,1,-1)^T cos(sqrt(3) omega_0 t + delta)\ 
  $ 

- EXAMPLE: double pendulum
  $ 
      cases(x_1 = l_1 sin phi_1 quad y_1 = -l_1 cos phi_1, x_2 = l_1 sin phi_1 + l_2 sin phi_2 quad y_2 = l_1 cos phi_1 + l_2 cos phi_2) $$ 
=>T = 1/2 m_1 l_1 dot(phi)^2+1/2m_2(l_1^2 dot(phi_1)^2 + l_2^2 dot(phi_2)^2 \ + 2l_1 l_2 dot(phi_1)dot(phi_2)cos(phi_1-phi_2))\
      U = -m_1 g l_1 cos phi_1 - m_2 g(l_1 cos phi_1 + l_2 cos phi_2)\
  $ using $cos phi approx 1-phi^2/2$
  $ L = 1/2 mat(dot(phi_1), dot(phi_2)) mat((m_1+m_2)l_1^2, m_2l_1l_2; m_2l_1l_2, m_2l_2^2) mat(dot(phi_1), dot(phi_2))\ quad- 1/2 mat(phi_1, phi_2) mat((m_1+m_2)l_1g,0;0,m_2g l_2) mat(phi_1, phi_2)\ = 1/2 dot(arrow(phi))^T M dot dot(arrow(phi)) - 1/2 arrow(phi)^T K arrow(phi)\
$

  When $m_1=m_2=m, quad l_1=l_2=l => quad 
      M=m l^2 mat(2,1;1,1), K=m g l mat(2,0;0,1)$ $ 
          det mat((omega^2M-K)) = 0 => omega^2 = (2 plus.minus sqrt(2)omega_0^2 )\
          mat(a_1^-;a_2^-) = C_-mat(1;sqrt(2) ), quad mat(a_1^+;a_2^+) = C_+mat(1;-sqrt(2) )\
      $ 
       
== Normal Coords
${x_i} = {Q_alpha}, "where" x_i = sum_(alpha=1)^(n)A_(i alpha) Q_alpha => \ sum_(j)(omega_alpha^2 m_(i j) - k_(i j) A_(j x))=0 \ => L = 1/2 sum_(alpha=1)^(n)(dot(Q^2)_alpha - omega_alpha^2 Q_alpha^2)   ==>^"EL" dot.double(Q_alpha)+omega_alpha^2Q_alpha =0  $ 

= Motion of Rigid Body
- EXample: rotor
rotation with constraint $abs(arrow(r_i)-arrow(r_j))$ .COM coords are useful here $
cases(arrow(r)=arrow(r_1)-arrow(r_2),arrow(R)=(m_1 arrow(r_1)+ m_2 arrow(r_2))/(m_1+m_2))=>cases(arrow(r_1)=arrow(R)+ m_2arrow(r)slash M , arrow(r_2)=arrow(R)- m_1arrow(r)slash M) $ $ 
     L = 1/2 M dot(arrow(R))^2 + mu dot(arrow(r))^2, quad mu = m_1 m_2/(m_1+m_2) \ ==>^"polar" L = 1/2 M dot(arrow(R))^2+ 1/2 mu a^2 (dot(theta)^2 +  dot(phi)^2 sin ^2 theta) 
$ 

== frames of reference

#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("RigidFrame.png",width: 50%),
        ($(X Y Z)==>^(R(theta,phi,psi))(x_1,x_2,x_3)$
    )))
Velocity of pt in body: $arrow(v) = arrow(V) + arrow(Omega) times arrow(r)$, where V is Translational vel, Omega is angular vel, r is position vector.

== Largrangian for Rigid Body
$ 
T = 1/2 M V^2 + 1/2 sum_(a) m_a [Omega^2 r_a^2 - (arrow(Omega) ) arrow(r_a))^2)] \ T"translational" +T"rotational"
$ 
consider rotation, $ Omega^2 = sum_(i) Omega_i^2, quad arrow(Omega) dot arrow(r_a) = sum_(i) Omega_i x_(a,i)\ => T_("rot") = 1/2 sum_("i,j") Omega_i Omega_j I_("i,j"). quad I_(i j) equiv sum_(a)m_a(delta_(i j)r_a^2 - x_(a,i)x_(a,j)) $
$=> L = 1/2 M V^2 + 1/2 sum_(i,j)I_(i,j)Omega_i Omega_j -U$  
=== Inertial Tensor
- Discrete
$ 
    I = mat(sum m(y^2+z^2), -sum m x y, -sum m x z; -sum m x y, sum m(x^2+z^2), -sum m y z; -sum m x z, -sum m y z, sum m(x^2+y^2)))
$ 
- Continuous
$ 
    I_(i j) = integral rho(x) (delta_(i j) r^2 - x_i x_j) dif V\
    I_(x x)= integral rho(x) (y^2+z^2) dif V, I_(x y) = I_(y x) = -integral rho(x) x y dif V\
    I_(y y)= integral rho(x) (x^2+z^2) dif V, I_(y z) = I_(z y) = -integral rho(x) y z dif V\
    I_(z z)= integral rho(x) (x^2+y^2) dif V, I_(z x) = I_(x z) = -integral rho(x) z x dif V\
$ 
== Principle axis and principal moments of inertia
In the principal frame: $ T_"rot" = 1/2 (I_1 Omega_1^2 + I_2 Omega_2^2 + I_3 Omega_3^2) $ 
- spherical top $I_1=I_2=I_3$
- Symmetric top $I_1=I_2 eq.not I_3$
- Asymmetric top $I_1 eq.not I_2 eq.not I_3$\
- EXample: $ 
    det mat(I - lambda bold(1)) = 0 => lambda "prncp. mom."\ arrow(v)="eigenvec.= prncp. axis"\  
$ 

== Parallel axis theorem
when changing Origin diff. from COM(O),

#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
        image("parallelAxis.png",width : 50%),
        $I_(i j) =\ I'_(i j) - M(a^2 delta_(i j) - a_i a_j)$ 
, 
    ))
For a cube, when finding I at corner, first find I at COM, and 
$ 
    I'_(x x) = I_(x x) + M(b^2 +c^2) = 4/3 M(b^2)+c^2\
    I'_(y y) = I_(y y) + M(a^2 + c^2) = 4/3 M (a^2 + c^2)  \
    I'_(z z) = I_(z z) + M(a^2 + b^2)= 4/3 M(a^2 + b^2) \


$ 


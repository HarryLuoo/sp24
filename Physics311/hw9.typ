#show heading: text.with(size: 12pt, weight: 900, font: "Libre Baskerville")
#set text(11pt)
#set page(margin: (x: 1cm, y: 1cm), columns: 1, flipped: false)
#set math.equation(numbering:"(1)")
#show math.equation: set text(13pt)


= 1
#image("assets/2024-04-25-20-58-43.png", width: 70%)
- (a) (b) as graphed above. In order to simulate gravity, $ 
    A = omega^2 R = g => omega = sqrt(g/R)  = 0.5 "rad"slash s
$ 

- (c) effective gravity is $ 
    g_"eff" = omega^2 R prop R\
    => (g_"head" - g_"feet")/(g_"feet") = (R_"head" - R_"feet")/(R_"feet")=(-2)/(40) = -5%
$ 




#pagebreak()

= 2
- (a) recall EOM for a particle in rotating frame with angular velocity $Omega$, $ 
    m dot.double(arrow(r)) = -m Omega^2 rho + overbrace(2m dot(arrow(r)) times arrow(Omega),F_"cor") + overbrace(m arrow(Omega) times (arrow(r) times arrow(Omega)),F_"centripetal") + F_"buoyancy"
$ noticing that the droplet is relatively stationary with respect to the rotation frame, $F_"cor" = 0, quad F_"centripetal" eq.not 0$

\
- (b) (c) 
  The direction of $F_g + F_"cent"$ is downward, tengential to the water surface. 

  The water level is a equipotential surface of the combined potential of gravity and centrifugal force. So for a given height z,  $ 
    U = m g z +  U_"cent"\
    "where" U_"cent" =- integral F_"cent"  dif rho = -integral m Omega^2 rho  dif rho = -1/2 m Omega^2 rho^2   \
    => U = m g z - 1/2 m Omega^2 rho^2 = "constant" quad \
    => z(rho) = (Omega^2 rho^2)/(2g) + "const"
$ 
It is obvious that $z(rho)$, i.e. water surface, is a parabola.  
 




#pagebreak()
= 3
we choose the frame to be the following: ${hat(x),hat(y),hat(z)}$, where $hat(x) $ points eastward, $hat(y) $ points northward, and $hat(z) $ points upward. Let particle above earth surface has position $arrow(r)$, whose angle with earth's rotation axis is $theta$. 

EOM of particle $ 
    cases(
dot(arrow(v)) = -g hat(z) + 2 arrow(v) times arrow(Omega),
arrow(Omega) = Omega sin theta hat(y) + Omega cos theta hat(z),
arrow(v) = v_x hat(x) + v_y hat(y) + v_z hat(z)
  ) quad
  => dot(arrow(v)) = - g hat(z) + 2 Omega [(v_y cos theta - v_z sin theta) hat(x) - v_x cos theta hat(y) + v_x sin theta hat(z)] \
$ 

let $arrow(v)(t) = arrow(v_1) + arrow(v_2)$, with the first term being velocity neglecting rotation, and 2nd term is the correction with rotation.

 for $arrow(v)_1, Omega = 0$.
  $ 
      => cases(dot(v)_x = dot(v)_y = 0,
      dot(v)_z  = -g)
      => quad cases(
        arrow(v_1)(t) = arrow(v_0) - g t hat(z),
        arrow(r)(t) = arrow(r_0) + arrow(v_0) t - 1/2 g t^2 hat(z)
      )
  $ 
   Therefore, when recalling the coriolis force, $dot(arrow(v)) = - g hat(z) + 2 arrow(v) times arrow(Omega)$, we have $ 
       dot(arrow(v_1)) + dot(arrow(v_2)) &= -g hat(z) + 2 arrow(v_1) times arrow(Omega) +2 arrow(v_2) times arrow(Omega) \ &&"recognizing" Omega = "small", v_2 = "small" \
       & arrow(v_2) approx 2(arrow(v_0) - g t hat(z)) times arrow(Omega) 
   $ 
Now consider:
+ free fall from height h, with $v_0=0$ , over a time lapse of $t = sqrt((2h)/g) $
    $ 
        dot(arrow(v)) = 2 g t Omega sin theta hat(x) => quad arrow(v) = integral dot(arrow(v)) dif t = g t^2 Omega sin theta hat(x)  \
        arrow(v) = -g t hat(z) + g t^2 Omega sin theta hat(x)
    $ 
  $ 
    arrow(r) = integral arrow(v)  dif t = display(mat(1/3g Omega t^3 sin theta ; 0; -1/2 g t^2))   
  $ Noticing that $t = sqrt((2h)/g) $, displacement on the x-y plane is $ 
    x_f = 1/3 g Omega (sqrt((2h)/g) ) ^3 sin theta 
  $ <eq.3.1>
 
+ compare with particle thrown from ground, with $arrow(v_0) =  v_0 hat(z), quad t = 2sqrt((2h)/(g)) =(2v_0)/(g)$ 
  $ 
      dot(arrow(v_2)) &= 2(v_0 - g t) hat(z) times arrow(Omega) \ 
      & = 2 (v_0 - g t)hat(z) times (Omega sin theta hat(y) + Omega cos theta hat(z)) \
      &= hat(x)[-2 (v_0 - g t )Omega sin theta] \ 
      & = (-2 v_0 Omega sin theta + 2 g t Omega sin theta) hat(x)
  $ 
  $ 
      arrow(v_2) = integral arrow(v_2) dif t = (-2 v_0 Omega sin theta t + g Omega sin theta t^2) hat(x) \ 
       => arrow(v) = arrow(v_1) + arrow(v_2) = display(mat(-2 v_0 Omega sin theta t + g Omega sin theta t^2; 0; v_0 - g t)) $ 
   Considering  $t = 2sqrt((2h)/(g)) =(2v_0)/(g)$         
  $      
       => x_t = integral v_x  dif t  &= -v_0 Omega sin theta t^2 + 1/3 g Omega sin theta t^3 \ 
       & = -v_0 Omega sin theta (2v_0/g)^2 + 1/3 g Omega sin theta (2v_0/g)^3 \ 
       & = -4/3 g Omega (sqrt((2h)/g) ) ^3 sin theta 
  $ <eq.3.2>
  
Comparing @eq.3.1 and @eq.3.2, we have $(x_t)slash(x_f) = -4$ , thus showing that the deflection is indeed opposite and 4 times larger when the particle is thrown from the ground.

#pagebreak()

= 4
We propose the following frame: ${hat(x),hat(y),hat(z)}$, where $hat(x) $ points eastward, $hat(y) $ points northward, and $hat(z) $ points upward. Picture a hoop lying on ground with the following illustration:
#image("assets/2024-04-25-23-32-19.png",width: 50%)
Consider the rotation of an infinitesimal element of the hoop over an infinitesimal time interval, across small angle $alpha$.
Find coriolis force $ d F_"cor" = 2 dif m (arrow(v) times arrow(Omega)) $ where $ 
    arrow(v) = omega r display(mat(- sin alpha; cos alpha; 0)), quad arrow(Omega) = Omega display(mat(0;sin theta; cos theta)), quad dif m = m (dif alpha) / (2pi)   
$ 
Torque on said infinitesimal element can be found by $ 
     d tau = arrow(r) times dif F_"cor", quad arrow(r) =r display(mat(cos alpha; sin alpha;0)) \ 
     => d tau = 2 dif m (arrow(v) (arrow(r) dot arrow(Omega) - arrow(Omega)(arrow(r) dot arrow(v)))) = 2 omega r^2 Omega sin theta dif m display(mat(-sin^2alpha;sin alpha cos alpha; 0)) 
$ 
noticing $dif m  = m (dif alpha) / (2pi)$ , integrating the above w.r.t. $alpha$ from 0 to $2pi$, $ 
    tau = -(m omega  Omega r^2 sin theta) hat(x) 
$ 
The above shows that the torque due to coriolis force is westward with magnitude $m omega  Omega r^2 sin theta$ 



#pagebreak()
= 5
According to the hints in problem statement of Taylor 9.34, we write the puck's position vector, relative to the earth's center O, as $arrow(R) + arrow(r)$, where $arrow(R)$ is the position of thi point P and $arrow(r) = (x,y,0)$ is the puck's position relative to P. 

Ignoring centrifugal force, we can write the EOM as the following $ 
   dot.double(arrow(r)) =  g_0(r) + 2 dot(arrow(r)) times arrow(Omega) $ <eq.5.1>
        
   $ 
   
   "where" g_0(r) = -G M (arrow(R) + arrow(r) )/norm((arrow(R) + arrow(r)))^3
= -G M (arrow(R) + arrow(r))/(R^3) (1+ r^2/R^2)^(-3/2) $ 
recognizing that $r << R$, expanding the above function gives an approximation:
$ 
    g(r) = -G M (arrow(R) + arrow(r))/(R^3) = arrow(g)(0) + g(0)  arrow(r)/R 
$ 
 putting the above into @eq.5.1, we have $ 
    dot.double(arrow(r)) &= arrow(g)(0) + g(0)  arrow(r)/R + 2 dot(arrow(r)) times arrow(Omega) \ 
    & = g(0) display(mat(0;0;1))  -(g)/R display(mat(x;y;0))  + 2 display(mat(dot(y) Omega cos theta - dot(z) Omega sin theta; -dot(x) Omega cos theta;dot(x) Omega sin theta )) 
    
    $
The above is set of 2nd order ODEs:
$ 
     dot.double(x) = -g x /R + 2dot(y) Omega cos theta\
      dot.double(y) = -g y /R - 2dot(x) Omega cos theta
$ 
This is the same as Foucault pendulum equation with length of pendulum being $R$.

The oscillation frequency is $omega_0 = sqrt(g/R) approx 1.24 e(-3) space s^(-1) $, frequency of Foucault precession, $Omega_z = Omega cos theta$  




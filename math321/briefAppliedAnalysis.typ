#set heading(numbering: "1.I")
#set page(margin: (x: 1cm, y: 1cm))
#text(font: "Cambria",size: 14pt,weight: "black")[Brief Theory of Probability, Part 1\
Survey of main ideas and equations]


#line(length:100%, stroke:(thickness: 2pt))

= Coordinate Transformation
== cylindical
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
== spherical
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

= Dot product
- commutative
- positive definite
- distributive
- cauchy-schwarz inequality
= cross product
- anticommutative $arrow(u)times arrow(v)= -(arrow(v) times arrow(u))$
- distributive $arrow(u) times (arrow(v)+ arrow(w ))= arrow(u) times arrow(v) + arrow(u)+ arrow(w)$
- scalar mulipication
- triple scalar product $arrow(u) dot (arrow(v) times arrow(w)) = (arrow(u)times arrow(v) dot arrow(w)) $
- triple vector product $arrow(a) times( arrow(b) times arrow(c))=(arrow(b)dot arrow(a))arrow(c)- (arrow(c)dot arrow(a))arrow(b)$
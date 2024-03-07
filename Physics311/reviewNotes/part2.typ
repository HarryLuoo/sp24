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
L = T - U = 1/2 m dot(x)^2 - 1/2 k x^2 $ 

== 
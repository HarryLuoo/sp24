
#set math.equation(numbering:"(1)")
#set page(margin: (x: 1cm, y: 1cm))

= HW 4, Harry Luo

== ex 3.4
Since X has uniform distribution on $[4,10]$, it has a PDF of $f(x)=1/6 "for x in [4,10]"$ and zero otherwise.

(a) $ P(x < 6) = P(4 < X <6) = (6-4)/(6)=1/3 $\
(b)$
    P(|X- 7| > 1) &= P(X < 6)+P(X> 8)\ &=P(4<X<6)+P(8<X<10)\ &=1/3+1/3=2/3
  $
   
(c) $
P(X <t | X < 6) &= (P(X < t, X < 6))/(P(X < 6))  "for" 4 <= t <=6\ 
 &= P(X < t)/ P(X < 6) \
 &= (P(4<=X<t))/(P(X < 6))\
  &= (t-4)/(6-4) = #rect(inset: 9pt)[ $display((t-4)/2)$ ] 
$

== ex 3.5
possible values correspond to jumps in cdf, and the pmf is the size of the jump.
$
p_x (1) = 1/3\
p_x (4/3) = 1/2 - 1/3 = 1/6\
p_x (3/2) = 3/4 - 1/2 = 1/4\
p_x (9/5) = 1 - 3/4 = 1/4
$


== ex 3.7
For a continuous random variable, the cdf is described as $F(x) = P(X <= x) = integral_(- infinity)^(x)f(t)dif t$\
(a)$
P(a <= X <= b) = F(b) - F(a) = 1\
=> a <= sqrt(2); b >= sqrt(3) \
"smallest interval" = [sqrt(2), sqrt(3)]
$

(b) for a continuous R.V., the pmf at any point is zero, so $P(X = 1.6)=0$\

(c)$ P(1 <= X <= 3/2)  &= F(3/2)-F(1)\ &= ((3/2)^2-2)-0 \
&= #rect(inset: 8pt)[$ display(1/4)$ ]  $

(d) Noticing the fact that the cdf is continuous except at points $sqrt(2), sqrt(3)$, the pdf could be retrieved by:$
f(x)= F'(x)= cases( 2x "if sqrt(2) <= x < sqrt(3)", 0 "o.w.",)
$


== ex 3.9
pdf was given by $
f(x) = cases(3 e^(-3x) "if x > 0", 0 "o.w.",)
$
(a) for a continous R.V., expectation is calculated by $
E(X) = integral_(-infinity)^(+infinity) x f(x) dif x = integral_0^(+infinity) 3x e^(-3x) dif x = 1/3
$
(b)$ E(e^(2X))= integral_(-infinity)^(+infinity) e^(2x) f(x) dif x = integral_0^(+infinity) 3 e^(-x) dif x = 3 $



== ex 3.16
 $ E(Z) = integral_(-infinity)^(+infinity) x f(x) dif x &= integral_1^2 1/7 x dif x + integral_(5)^(7) 3/7 x dif x\ &= 75/14 
$
$
"Var"(Z) = E(Z^2) - (E(Z))^2 
&= integral_1^2 1/7 x^2 dif x + integral_(5)^(7) 3/7 x^2 dif x - (75/14)^2 \ &= 1633/588
$

== ex 3.23
(a) Possible values of profit are $ 0 - 1 = -1"(won nothing)"; 2 - 1 = 1"(80 ppl who won $2)";\ 100 - 1 = 99"(19 ppl who won $100)";  7000 - 1 = 6999 "(1 who won $7000)". $ \ We can then represent the pmf as $
P(X = -1) = (10000- 100)/ 10000 = 99/100\
P(X = 1) = (80)/ 10000 = 1/125\
P(X = 99) = (19)/ 10000\ 
P(X = 6999) = (1)/ 10000\
$

(b)$
P(X>= 100) = P(X = 6999) = 1/10000
$

(c)For X as a discrete R.V., the expectation is $
E(X)= sum_(k)k P(X = k)= -1 times 99/100 + 1/125 + 99 times 19/10000 + 6999 times 1/10000 = -0.094\
E(X^2)= sum_(k)k^2 P(X = k)= (-1)^2 times 99/100 + 1^2 times 1/125 + 99^2 times 19/10000 + 6999^2 times 1/10000 = 4918.22\  
=> "Var"(X) = E(X^2) - (E(X))^2 = 4918.22 - (-0.094)^2 = 4918.22 - 0.008836 = 4918.211
$



== ex 3.28
(a)X has possible values of 1,2 3. This is a sampling without replacement trial, where $
"price in the first open box: " P(X = 1) = 3/5\ 
"price in the second open box "  P( X=2) = 2/5 times 3/4 = 3/10\
"price in the third open box" P(X = 3) = 2/5 times 1/4 times 3/3 = 1/10\
$

(b)$E(X) = 1 dot 3/5 + 2 dot 3/10 + 3 dot 1/10 = 3 slash 2$\

(c)$E(X^2)= 1^2 dot 3/5 + 2^2 dot 3/10 + 3^2 dot 1/10 = 27/10  $\
$=> "Var"(X) = E(X^2)- E(X)^2 = 9 slash 20$

(d) We represent the loss or gain of the game as $Y = g(X)$.
$
Y = g(X) = cases(100 " if X = 1", 0 " if X = 2", -100 " if X = 3".)\
E(Y) = 100 times 3/5 + 0 times 3/10 - 100 times 1/10 = 50 \
$

== ex 3.31 
(a)
$
1 = integral_(-infinity)^(+infinity) f(x) dif x = integral_(1)^(infinity) c x^(-4)dif x = c/3\ => c =3
$

(c)$
P(0.5 < X < 2) =  integral_(0.5)^(2) 3x^(-4) dif x = 7/8
$
(e)
$
&"when x >= 1:" &&F(x)= P(X <= x)= integral_(1)^(x) 3t^(-4) dif t = 1 - x^(-3)\
&"when x < 1:" &&F(x)= P(X <= x)= 0\
$

(f)
$
E(x) = integral_(-infinity)^(+infinity) x f(x) dif x = integral_(1)^(infinity) 3x^(-3) dif x = 3/2\
$

(g)
$
E(5X^2 + 3X) = integral_(-infinity)^(infinity) 3x^(-2) dif x + 3 times 3/2 = 15/2 + 9/2 = 12
$

== ex 3.47

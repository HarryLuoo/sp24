#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))


= HW 7, Harry Luo
= 5.8 
We can solve for the probability density function by differentiating the
cumulative distribution function. 
$X in [-1,2] => X^2 in [0,4]$. When $X^2 in [0,4]$,

$ F_Y(y) &= P(Y<= y) \ &= P(X^2<=y) \ &= P(-sqrt(y)<= X <= sqrt(y)) \ &= F_X (sqrt(y)) - F_X (-sqrt(y) ) $ <eq.cdf>

Differentiating @eq.cdf, we get the probability density function as:

$ f_Y (y) = F'_Y(y) = (1)/(2sqrt(y) )f_X (sqrt(y) )+(1)/(2sqrt(y) )f_X (-sqrt(y) ) $

The probability density function of $X$ is given as $f_X(x) = 1/3 $ when $x in [-1,2]$ and
zero otherwise.

Considering when $ y in [0,1], sqrt(y) in [0,1] "and" -sqrt(y)=[-1,0]$, which
are within the range of $x$, 

so $f_X (sqrt(y)) = f_X (-sqrt(y)) = 1/3$, $ f_Y(y) = 1/(2sqrt(y) ) * 1/3 + 1/(2sqrt(y) ) * 1/3 = 1/(3sqrt(y)) $ when $y in [0,1]$. 

When $y in [1,4], sqrt(y) in [1,2]",but" -sqrt(y)in [-2,-1]"out of range"$ 

so $f_X (sqrt(y)) = 1/3, f_X (-sqrt(y)) = 0$, $ f_Y (y) = 1/(6sqrt(y) ) $ when $y in [1,4]$. 

Thus, $ F_Y (y) = cases(
  0 "when" y < 0,
  1/(3sqrt(y)) "when" 0 <= y < 1,
  1/(6sqrt(y)) "when" 1 <= y < 4,
  1 "when" y >= 4,

) $


= 5.28
We know $f_X (x)=1/3, x in (-1,2)$ and 0 otherwise, while $Y = X^(4) in [0,16]$ thus 
$ f_Y (y) = 0, y in.not [0,16] $ 

When $y in [0,16]$, we can find the probability density function by
differentiating the cumulative distribution function.
$ F_Y (y) = P(Y <= y) = P(X^4)<= y = F_X (y^(1 slash 4)) - F_X (- y ^(1 slash 4)) $ <eq.2>

Differentiating @eq.2, we get the probability density function as:
$ f_Y (y) = 1/4y^(-3/4) f_X (y^(1/4)) + 1/4 y ^(-3/4) f_X (- y^(1/4)) $ 

When $y in [0,1]$, $y^(1/4) in [0,1] "and" -y^(1/4) in [-1,2]$, which are within
the range of $x$, thus 
$f_X (y^(1/4)) = f_X (-y^(1/4)) = 1/3$, $ f_Y (y) = 1/(6y^(3/4)) $

When $y in [1,16]$, $y^(1/4) in [1,2] "and" -y^(1/4) in [-2,-1]$, which are
within the range of $x$, thus $f_X (y^(1/4)) = f_X (-y^(1/4)) = 1/3$, $ f_Y (y) = 1/(12y^(3/4)) $

In summary, $ f_Y (y) = cases(
  0 "when" y < 0,
  display(1/(6y^(3 slash 4))) "when" 0 <= y < 1,
  display(1/(12y^(3slash 4))) "when" 1 <= y < 16,
  0 "when" y >= 16,

) $


= 5.32
Given $X in (0,1)$, possible values for Y is the interval $(1,infinity)$ 
THerefore, when $t< 1, f_Y (t ) = 0$ and when $t >= 1$, we can find the
probability density function by differentiating the mass function.
$ P(Y <= t) = P(1/x <= t) = P(X >= 1/t) = 1- 1/t \
f_Y (t)=(dif)/(dif t) P(Y<=t) = 1/t^2 "when" t>= 1 $ 

= 6.6
- (a) Marginal of X, when x > 0, is 
$ f_X (x) = integral_(0)^(infinity) x e^(-x(1+y)) dif x = e^(-x) $ 
and zero otherwise.

The marginal of Y when y >0, similarly, is 
$ f_Y (y) = integral_(0)^(infinity) x e^(-x(1+y)) dif x =(1)/((1+y)^2) $ 
and zero otherwise.

- (b) Expectation:
$ E[X Y] &= integral_(0)^(infinity)integral_(0)^(infinity)x y times f(x,y) dif x dif y \ &= integral_(0)^(infinity)integral_(0)^(infinity) x^2 y e^(-x(1+y)) dif x dif y \ &= integral_(0)^(infinity) e^(-y) dif y \ &= 1 $ 

- (c) Expectation:
$
  E[(X)/(1+Y)] & = integral_(0)^(infinity) integral_(0)^(infinity) (x)/(1+y)x e^(-x(1+y)) dif x dif y \ &= integral_(0)^(infinity) (1)/(1+y) (2)/((1+y)^3) dif y = 2 integral_(0)^(infinity) (1)/((1+y)^4) dif y \ &= 2/3 
$ 

= 6.18
- (a) We can write the pmf as a table:
#image("hw7_tb1.png") 
we can confirm that the terms are non negative, and the sum of all terms is 1. This certifies that $p_(X,Y)$ is a *valid pmf*. 

- (b) Marginal of X and Y can be found by summing the rows and columns:
$ 
X:\ P(X=1) = 1/4 , P(X=2) = 1/4, P(X = 3) = 1/4, P(X = 4) = 1/4 \
Y:\ P(Y=1) = 25/48, P(Y=2) = 13/48  P(Y=3) = 7/48, P(Y=4) = 1/16
 $ 
- (c)
  $ 
  P(X = Y +1) &= P(X = 2 , Y = 1) + P(x = 3, Y = 2)+ P(X = 4, Y = 3) \ 
  & = 1/8 + 1/12 + 1/16 \ 
  & = 13/48
   $ 


= 6.24
We can use binomial distribution with n = 3 and p = 1/4. The probability of of having exactly two balls are green and one is not green is $ 
binom(3,2) (1/4)^2 (3/4) = 9/64
 $ 
 By the same logic, the probability of having exactly 2 R ball, 2 Y balll or 2 W balls ae also 9/64. 
 
 So the probability of having exactly 2 balls of the same color is 
 #rect(inset: 8pt)[ $ display(9/64 times 4 = 9/16)$ ]


 



//6.36 (a), (b)
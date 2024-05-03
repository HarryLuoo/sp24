#set math.equation(numbering:"(1)")

= HW 10 Harry Luo


== 9.2 
- (a)
  Recall markov's inequality: $P(X>= c) <= (E(X))/(c)$ for r.v. X and $c>0$  

  For exponential r.v. X, we know $E(X) = 1/lambda = 2, "Var"(X) = 1/lambda^2 = 4, X > 0$ By Markov's inequality, $ P(X>6)<= (2)/(6) = 
#rect(inset: 8pt)[
$ display(  1/3)$
]
 $ 
- (b) 
  Recall chebyshev's inequality: $P(|X-mu| >= c) <= (sigma^2)/(c^2), (c>0)$ 
  Here, we have $ 
      P(X>6) = P(|X - mu| > 4) <= (4)/(16) =
#rect(inset: 8pt)[
$ display(       1/4)$
]
 
  $

== 9.6
We denote the time Nate spends eating the kth hot dog $X_k$, and $S_n = sum_(k)^n X_k  $ is the total time he spends eating n hot dogs. We need to find the probability of $P(S_(64) < 15*60 = 900)$. Given that $mu = 15, sigma = 4$ for each trial(eating one hot dog), for 64 trials, according to CLT, $ 
    P(S_(64)<900) &= P((S_(64) - 64*15)/(4sqrt(64) )< (900 - 64*15)/(4sqrt(64) )) \ 
    & approx Phi((900 - 64*15)/(4sqrt(64) )) \ 
    & =  Phi(-1.875) \ 
    & = 1-Phi(1.875) \ 
    & = 
#rect(inset: 8pt)[
$ display(    0.0304)$
]
 
$ 
 



== 9.18
Referencing example 8.13, we have $E(X) = k/p=300, "Var" =(k(1-p))/(p^2) =(100 * ( 1- 1/3))/((1 slash 3)^2) = 600$ 
- (a) By markov's inequality, $ 
    P(X>500) <= E(X)/500  = 
#rect(inset: 8pt)[
$ display(    3/5)$
]

$ 
- (b) By hcecbychev's inequality, $ 
    P(X>500) =  P(|X-300| > 200) <= ("Var"(X))/(200^2) = 600/200^2 = 
#rect(inset: 8pt)[
$ display(    3/200)$
]
$ 
- (c) 
By the CLT, $ 
    P(X>500) = P((X - 300)/(sqrt(600) ) > (500-300)/(sqrt(600) )) &=1-Phi((20)/(sqrt(6) )) approx 0
$ 

- (d)
  
  The probability of the event "More than 500 trials are needed to get at least 100 success"  is equiavlent to the probability of "at most 99 successes in the first 500 trials". Thus we create r.v. $S=$ the number of success within the first 500 trials.

It follows that $P(X > 500) = P(S < 99)$ , and that $S ~ "BIn"(500,1/3)$ 

  We have $ 
      P(S < 99) = P((S - (500)/(3))/(sqrt((500 * 2)/9) ) <= (99 - 500/3)/(sqrt(500*2 / 900) )) approx Phi(-6.42) approx 0 
  $ 
  
== 10.2
From (i), we can deduce that $p_(X,Y) (1,1) = 1/8 $.

from (ii), we know $ 
    P_(X|Y) (0|0) = (P_(X,Y)(0,0))/(P_Y (0)) =  (P_(X,Y)(0,0))/(P_(X,Y)(0,0) + P_(X,Y)(1,0)) = (P_(X,Y)(0,0)) / ((P_(X,Y)(0,0)) + 1/8) = 2/3 \
    => P_(X,Y) (0,0) = 1/4
$ 

from (iii), we know $ 
    E(Y|X = 0) &=  0 * p_(Y|X) (0|0) + 1 * p_(Y|X) (1|0) + 2*  p_(Y|X) (2|0) = 4/5 \ 
     => (p_(X,Y) (0,1) + 2 p_(X,Y) (0,2))/(p_(X) (0)) &= (p_(X,Y) (0,1) + 2 p_(X,Y) (0,2))/(sum_(k = 0)^2 p_(X,Y) (0,k)) \ 
     & =  (p_(X,Y) (0,1) + 2 (1-3/8-1/4 - p_(X,Y) (0,1)))/(2/8 + p_(X,Y) (0,1) + 3/8 - p_(X,Y)(0,1)) = 4/5 \
     => p_(X,Y) (0,1) = 2/8, p_(X,Y) (0,2) = 1/8
$ 
#image("assets/2024-05-01-20-51-36.png", width: 30%)

== 10.4
- (a) 
  By definition, $ 
      p_(X|N) (k|n) =  binom(n,k) (1/2)^n, med 0 <= k <n < 100
  $ 
- (b) The mean of the binomial $E[X|N=n] = n p = n/2, med 0 <= n <= 100$
- (c) recalling the law of total expectation $ E[X] &= E[E(X|N = n)]  =  E[n/2] \ 
& =  0.5 E(N) \ 
& =  0.5 * n p \ 
& =  0.5 * 100 * 1/4  = 
#rect(inset: 8pt)[
$ display( 25/2)$
]
 $ 
  
== 10.6 
- (a) by definition, $ 
    f_(X|Y) (x|y) = (f_(X,Y) (x,y))/(f_Y (y)) 
$ We thus set out to find $f_Y (y)$ by definition, for $y in (0,2)$ : $ 
    f_Y (y) = integral_(- infinity)^(infinity) f(x,y)dif x = 1/4 integral_(0)^(y) (x + y)  dif x = 3/8 y^2  
$ 
  Therefore, for $0<x<y<2:$ $ 
      f(x|y) = (1/4 (x+y))/(3/8 y^2) = 2/3 (x+y)/y^2
  $ 

- (b) For $y=1$ the conditional density function of X is $ 
    P(X < 1/2 | Y = 1) = integral_(-infinity)^(1/2) f_(X|Y) (x|1) dif x = 2/3 integral_(0)^(1/2) (x+1) dif x 5/12\ 
    P(X < 3/2 | Y = 1 ) = integral_( - infinity)^(3/2) f_(X|Y) (x|1) dif x = 2/3 integral_(0)^(1) (x+1) dif x =1  
$ 
  
- (c) conditional expectation: for $y in (0,2)$, $ 
    E[X^2| Y=y] = integral_(-infinity)^( infinity) x^2 f_(X|Y) (x|y)  dif y = 2/3 integral_(y)^(0) x^2 (x+y)/(y^2) dif x = (7)/(18) y^2   
$ 
We can find $E[X^2]= integral_(-infinity)^(infinity) x^2 f_X (x) dif x$ by first finding the marginal density function of x $ 
    f_(X) (x) = integral_(-infinity)^(infinity) f_(X,Y) (x,y) dif y = 1/4 integral_(x)^(2) (x+y) dif y = 1/2 + 1/2 x - 3/8 x^2 
$ 
 Therefore, $ E[X^2]= integral_(-infinity)^(infinity) x^2 f_X (x) dif x  &= integral_(0)^(2) x^2(1/2+ 1/2 x - 3/8 x^2) dif x = 14/15 
 $
 We check if we can find the same result by $ 
     integral_(-infinity)^(infinity) E[X^2|Y = y] f_Y (y) dif y = 7/18 integral_(-infinity)^(infinity) y^2 f_Y(y) dif x = 7/18 integral_(0)^(2) y^2 * 3/8 y^2  dif y = 14/15 
 $ 
 
== 10.8
- (a) 
It is obvious that $ 
    p_(Y|X) (m|l) = binom(l,m) (4/9 )^m (5/9)^(l-m), med 0<=m<=l. 
$ Since Y has a sample space of either green ball or not, it is a binomial distribution. $ 
    E(Y|X = l) = 4/9 l => E(Y|X) = 4/9 X 
$ 

- (b) Notice that $X~ "Geom" (1/6) => E(X) = 6$
  $ 
      E(Y) = E(E(Y|X)) = E(4/9 X) = 4/9 E(X) = 8/3
  $ 
   
 
== 10.24
- (a) 
  We notice $X ~ "Bin"(y,1/6)$ . Therefore $ 
      p_(X|Y) (x|y) = binom(y,x) (1/6)^x (5/6)^(y-x), med 0<=x<=y <= 10 
  $ 
  Knowing that $ Y ~ "Bin" (10,1/2) => p_Y (y) = binom(10,y) (1/2)^10 $
   We can find $ p_(X,Y) (x,y)  =  p_Y (y)p_(X,Y) (x,y) = binom(10,y) (1/2) ^(10)binom(y,x) (1/6)^(y-x)    
   $
  We find the unconditional probability mass function of X by $ 
      p_(X) (x) &= sum_(y) p_(X|Y) (x|y) p_Y(y)  \ 
      & = sum_(y) p_(X,Y) (x,y) \ 
      & = sum_(y=x)^(10) binom(y,x) (1/6)^x (5/6)^(y-x) binom(10,y) (1/2)^10 \ 
      & = binom(10,x) (1/6)^x (1/2)^10 (11/6)^(10-x) = binom(10,x) (11/12)^(10-x) (1/12)^(x)
  $ 
  We find $E(X|Y)$ by noticing that it is the expectation with $Y=y$ is $E(X|Y) = y/6 $, so $ 
      E(X|Y) = Y/6 
  $ 
   
Since $Y~ "Bin" (10,1/2)$, $ E(X) = E(E(X|Y)) = E(Y/6) = 5/6 $ 

== 10.38
- (a) knowing that $ 
    f_Y (y) = e^(-y), y>0, quad f_(X|Y) (x|y) =y e^(-y x), x,y>0 
$ 
We thus can find the joint density function simply by $ 
    f_(X,Y) (x,y) = f_Y (y) f_(X|Y) (x|y) = y e^(-y x) e^(-y) = y e^(-y (x+1)) 
$ 

- (b) The distribution is conditioned on $X=x$, so we have to first find $ 
    f_X  (x) &= integral_(-infinity)^(infinity) f_(X,Y) (x,y) dif x \ 
    & = integral_(0)^(infinity) y e^(-y(x+1))   dif y = (1)/((1+x)^2) 
$ 
 
so for $x>0, y >0$ $ 
    f_(Y|X) (y|x) = (f_(X,Y) (x,y))/(f_X (x)) = y (1+x)^2 e^(-y(x+1)) 
$ 
 
 -(b) Y is conditioned on $X = x$. so we find distribution of Y conditioned on X by first:
$ 
    f_X (x) = integral_(-infinity)^(infinity) f_(X,Y) (x,y)  dif y = integral_(0)^(infinity) y e^(-y(x+1)) dif y = 1/(1+x)^2   
$ 

Therefore, for $x>0, y>0$ $ 
    f_(Y|X) (y|x) = (f_(X,Y)(x,y))/(f_X (x)) = y(1+x)^2 e^(y(x+1)) 
$ Notice that it follows a gamma distribution as $ Y~"Gamma"~(2,x+1)$ 



== 10.40
- (a)
The conditional function of Y given $X=x$  can be found by $ 
    f_(Y|X) (y|x) = cases(x quad 0<y<1/x, 0 quad y >= 1/x, 0 quad y<= 0) 
$ 
Having conditioned on $X = x$, and for $Y < 1/x$:$ 
    P(Y>2|X=x) = integral_(2)^(1/x)  x dif y = 1-2x, "for" 0<x<1/2\
    P(Y>2|X=x) = 0, "for" 1/2<=x
$ 
- (b) We notice that since Y is uniform on $(0,1/x)$, we have $ 
    E(Y|X=x) = 1/(2x) => quad E(Y|X) = 1/(2X) \ 
     => E(Y) = E(E(Y|X)) = E(1/(2X)) = integral_(0)^(infinity) 1/(2x) * x e^(-x)   dif x = 1/2  
$ 
  
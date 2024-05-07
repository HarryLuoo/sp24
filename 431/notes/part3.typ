#set math.equation(numbering:"(1)")
#set heading(numbering: "1.1")

= Sums of independent r.v.& Symmetry
== Convolution of two distributions 
given two independent r.v. $X$ and $Y$, the distribution of $Z = X + Y$ is the convolution of the distributions of $X$ and $Y$.
+ when $X$ and $Y$ are both discrete, the pmf of $X+Y$ is given by 
  $ 
    p_(X+Y) (n) = p_X convolve p_Y (n) = sum_(k) p_X(k) p_Y(n-k) = sum_(k) p_X(n-k) p_Y(k)
  $ 
+ when $X$ and $Y$ are both continuous, the pdf of $X+Y$ is given by 
  $ 
    f_(X+Y) (z) = f_X convolve f_Y (z) = integral_(-infinity)^(infinity) f_X (z-y) f_Y (y) d y = integral_(-infinity)^(infinity) f_X (z-y) f_Y (y) d y
  $
-  _example: convolution of geometric random variables_
  
  let X and Y be independent geometric random variables with the same suvvess parameter $p <1$ , find the distrbution of $Z = X + Y$.
  
  We know  $p_X (k) = p_Y (k) = p (1-p)^(k-1) med k>=1$ 
  r.v. $Z = X + Y$ takes on values $n = 2, 3, ...$. Via the convolution magic promised above, we have $ 
      P(X+Y=n) &= sum_(k=-infinity)^(infinity) P(X=k) P(Y = n-k) \ 
      &= sum_(k=1)^(n-1) p(X=k) P(Y=n-k) \ 
      & = sum_(k=1)^(n-1) p(1-p)^(k-1) p(1-p)^(n-k-1) \ 
      & = sum_(k=1)^(n-1) p^2(1-p)^(n-2)   \ 
      & = (n-1)p^2(1-p)^(n-2) 
  $ 

== Negative binomial distribution

Coming off from the geometric distribution, we have the negative binomial distribution, which is the distribution of the number of trials needed to get $r$ successes in a sequence of independent Bernoulli trials with success probability $p$. Its distribution, i.e. pmf, is given by  $ 
    P(X=n) = binom(-1,k-1) p^k (1-p)^(n-k) quad (n>= k)     
$ 

abbriviate this by $X~ "Negbin" (k,p)$ , where the geometric is a special case with $k=1$.


== Collection of normal distributed r.v.s
For $X_i ~ cal(N)(mu_i, sigma_i^2), med X = sum_(i) a_i X_i  $ , we know $ 
    X~cal(N) (mu, sigma^2) \
    "where" mu = sum_(i) a_i mu_i, med sigma^2 = sum_(i) a_i^2 sigma_i^2
$ 
in other words, the sum of normal distributed r.v.s is also normal distributed.

== Exchangeable r.v.s
a sequence of r.v.s $X_1, X_2, X_3, ..., X_n$ is *exchangable* if the following condition holds: for any permutation $(k_1,k_2,k_3)$ of $(1,2,...,n)$, we have $ 
    (X_1,X_2,...,X_n) =^d (X_(k_1),X_(k_2),...,X_(k_n)) 
$ 
- *How to check exchangability* 
  
  "it just works" method: check if the r.v. are identically distributed, i.e. if marginal pdf or pmf is the same.

   Suppose $X_1,X_2,...,X_n$are discrete random variables with joint probability mass function $p$. Then these random variables are exchangeable if and only if $p$ is a symmetric function. 
   
   Suppose $X_1,X_2,...,X_n$ are jointly continuous random variables with joint density function $f$.Then these random variables are exchangeable if and only if $f$ is a symmetric function. 

   If the expectation is conserved under permutations of our set of r.v.s.

*Importantly, if the r.v.s are independent and identically distributed, they are also exchangeable.*

remarks: 
+ r.v. denoting outcomes of sampling without replacement $X_1,X_2,...X_n$ are exchangeable.
+  For any function g dependent on , the r.v.s $g(X_1),g(X_2),...,g(X_n)$ are exchangeable.


== Expectation and Varience of Multivariable r.v.
=== Expectation: linear
$ 
    E[g_1(X_1) + g_2(X_2) + ...+g_n (X_n)] = E[g_1(X_1)] + E[g_2(X_2)] + ...+ E[g_n (X_n)] $ 
         
    $ 
    E[X_1+X_2+...+X_n] = E[X_1] + E[X_2] + ...+ E[X_n]
$ 
Expectation of a sum is always the sum of expectations.

=== Varience: sum of independent r.v., linear
$ 
    "Var"(X_1+X_2+...+X_n) = "Var"(X_1) + "Var"(X_2) + ...+ "Var"(X_n)
$

=== The indicator method
- _example_ We draw five cards from a deck of 52 without replaceement. Let X denote the number of Aces among the chosen cards. Find the expected value of X. 

  Two ways to solve this:
  + Since order does not matter in our draw of 5, by argument of exchangability, we can construct the following inditator: $ 
      I_i = cases(1 quad "if the ith card is an ace", 0 quad "otherwise") 
    $ 
    Since X is the number of Aces among our 5 cards, we have $ 
    X = I_1 + I_2 + I_3 + I_4 + I_5
    $
    Recall the linearity of expectation, we can rephrase the expected value as $ 
      E[X] = E[I_1] + E[I_2] + E[I_3] + E[I_4] + E[I_5] 
    $ <eq.expt>
          Since r.v. $I_i$ are exchangeable, we have 
    $ 
    E[I_1] = E[I_2] = E[I_3] = E[I_4] = E[I_5]
    $  
    @eq.expt becomes
    $ 
       5*E[I_1]= 5 * P(I_1 = 1) = 5 * 4/52 = 5/13 
    $ 
  + We can also label the Aces in the total deck as 1,2,3,4, and have our indicators $j_1,j_2,j_3,j_4$ indicating if the ith Ace is in our draw or not. The number of Aces in our draw is then $X = j_1+j_2+j_3+j_4$. By similar arguements of exchangability, we have $E[X] = 4E[J_1] = 4 P("one of the ace is among the 5 cards")$. Notice that $ 
    P("one of the ace is among the 5 cards") = (binom(1,1), binom(51,4))/(binom(52,5)) = 5/52 \ => E[X] = 5/13   
  $ 
=== Expectation of multiple products
let $X_1, X_2, X_3$ be independend r.v., when for all function $g_1,g_2,g_3$  
$ 
     E[product_(i=1)^3 g_i(X_i)] = product_(i=1)^3 E[g_i(X_i)]
$ 
== Moment generating function with sums of r.v.
For independent r.v. $X,Y$, and mgf $M_X (t) , med M_Y (t)$, $ 
    M_(X+Y) (t) = M_X (t) M_Y (t) 
$ 

== Covariance and correlation
=== Covariance
$ 
    "Cov"(X,Y) = E[(X-E[X])(Y-E[Y])] = E[X Y] - E[X]E[Y]
$
- X&Y are 
  - positively correlated if $"Cov"(X,Y) > 0$
  - negatively correlated if $"Cov"(X,Y) < 0$
  - uncorrelated if $"Cov"(X,Y) = 0$
=== Properties of Covariance
- $"COV"(X,Y) = "COV" (Y,X)$
- $"COV" (a X +b,Y) = a "COV"(X,Y)$
- for any r.v. $X_i,Y_j$ and real numbers $a_i,b_j$:$ 
    "COV"(sum_(i=1)^n a_i X_i, sum_(j=1)^m b_j Y_j) = sum_(i=1)^n sum_(j=1)^m a_i b_j "COV"(X_i,Y_j) 
$ 
- Practically, $ 
    "Cov"(Y_1+Y_2, Z) = "Cov"(Y_1,Z) + "Cov"(Y_2,Z) \
    "Cov"(X,X) = "Var"(X) \
$ 
 

=== Variance of sum of r.v.s
$ 
"Var" (sum_(i = 1)^(n) X_i) = sum_(i= 1)^(n) "Var" (X_i) + 2 sum_(i<=i<j<=n) "Cov"(X_i,X_j))   
$ 
For two r.v.s, this comes down to $ 
     "Var" (X+Y) = "Var" (x) +" Var" (Y ) + 2 "Cov"(X,Y)
$ 
For three r.v.s, this is uglier...
$ 
    "Var" (X+Y+Z) \ = "Var" (X) + "Var" (Y) + "Var" (Z) + 2 "Cov"(X,Y) + 2 "Cov"(X,Z) + 2 "Cov"(Y,Z) 
$ 
You dont want to compute this for four or more...

=== Correlation
$ 
    "Corr"(X,Y) = "Cov"(X,Y) / sqrt("Var"(X) "Var"(Y))
$

= Tail bounds and limit theorems
== Markov's inequality
For any non-negative r.v. $X$ and any $a>0$, we have $ 
    P(X>=a) <= E[X]/a
$
== Chebyshev's inequality
For any r.v. $X$ with finite mean and variance, and any $k>0$, we have $ 
    P(|X-E[X]|>=k) <= "Var"(X)/k^2
$
normally used to find $P(X >= c+ mu) <= (sigma^2)/(c^2) "and"quad P(X<= mu-c)<= (sigma^2)/(c^2)$ 

== generalized Law of large numbers
For a sequence of iid r.v.s $X_1,X_2,...,X_n$ with finite mean $E[X_i] = mu$ and finite variance $"Var" [X_i] = sigma^2$, letting $S_n = X_1+X_2+...+X_n$, for any $epsilon > 0$, we have $ 
    lim_(n -> infinity) P(|S_n/n - mu| < epsilon) = 1   
$

== Generalized Central Limit Theorem
For a sequence of iid r.v.s $X_1,X_2,...,X_n$, where n is the sample size, with finite mean $E[X_i] = mu$ and finite variance $"Var" [X_i] = sigma^2$, letting $S_n = X_1+X_2+...+X_n$, we have $ 
    lim_(n -> infinity) P(a <= (S_n - n mu)/(sigma sqrt(n) )<= b) = Phi(b) - Phi(a)
$
More practically, we use $ 
   P(S>= k) = P((S_n-mu)/(sqrt(n sigma^2) ) >= (k-n mu)/(sqrt(n sigma^2) )) = 1- Phi((k-n mu)/(sqrt(n sigma^2) ))
$ 

= Conditional distribution
A combination of conditional probability and marginal distribution.
== Discrete conditional distribution
recall the conditional probability $ 
    P(A|B) = (P(A sect B))/(B), "for" P(B)>0 
$ 
When A is now a r.v., we have the conditional distribution $ 
    p_(X|B) (k) = P(X=k|B) = P({X=k} sect B)/P(B)
$
=== Conditional expectation of X, given event B
$ 
    E[X|B] = sum_(k) k P(X=k|B)
$<eq.conditioned-exp>
=== Unconditiond pmf of X
$ 
    p_X (k) = sum_(i=1)^(n) p_(X|B_i) (k)med  P(B_i)   
$ <eq.unconditoned-exp>
- From @eq.conditioned-exp and @eq.unconditoned-exp we get
  $ 
      E[X] = sum_(i = 1)^(n) E[X|B_i] P(B_i)  
  $ 
  
=== Conditioning on r.v.
When both X and Y are r.v.s, we can have the following two-variable function$ 
    p_(X|Y) (k|j) = P(X=k|Y=j) = P({X=k},{Y=j})/P(Y=j) = (p_(X,Y) (k,j))/(p_Y (j))
$ 

=== Conditional  expectation of X, given Y=Y
$ 
    E[X|Y=j] = sum_(k) k P(X=k|Y=j) = sum_(k) k p_(X|Y) (k|j)
$ 

=== Unconditioned pmf with 2 r.v.S
$ 
    p_(X) (k) = sum_(i) p_(X|Y) (k|j) med p_Y (j) 
$
- From this, we can derive the unconditioned expectation of X and Y
$ 
    E[X] = sum_(k) E[X|Y=j]med p_Y (j)
$
=== Joint pmf with 2 r.v.s
$ 
    p_(X,Y) (k,j) = p_(X|Y) (k|j) p_Y (j) = p_(Y|X) (j|k) p_X (k)
$


== Continuous conditional distribution
For continuous r.v.s, with both $X, Y$ random variables, we have the conditional pdf of X given Y = y as $ 
    f_(X|Y) (x|y) = (f_(X,Y) (x,y))/(f_Y (y))
$

=== Conditional probability and expectation
$ 
    P(X in A|Y=y) = integral_(A) f_(X|Y) (t|y) d t
$
The conditoinal expectation of $g(X)$ 
$ 
    E[g(X)|Y=y] = integral_(-infinity)^(infinity) g(t) med f_(X|Y) (t|y) d t
$
=== The unconditioned pdf and expectation of X
Given the conditional pdf $f_(X|Y) (x|y)$, we can derive the unconditioned pdf of X as $ 
    f_X (x) = integral_(-infinity)^(infinity) f_(X|Y) (x|y) f_Y (y) d y
$

$ 
    E[g(X)] = integral_(-infinity)^(infinity)  E[g(X)|Y=y] med f_Y (y) dif y  
$

== Conditional expectation
=== conditional expectation as a r.v.
Let X and Y jointly continuous r.v., The conditional expectatino of X given Y is a new random variable dependent on Y $v(Y)$$ 
    v(Y) = E[X|Y=y] 
$ 

=== Conditioning and independence
recall that 
- Discrete r.v.
  two discrete r.v.s are only independent iff $ 
      p_(X,Y) (x,y) = p_X (x) p_Y (y)  
$

- Continuous r.v.
  two continuous r.v.s are only independent iff $ 
      f_(X,Y) (x,y) = f_X (x) f_Y (y)
$
now, If given pmf or pdf of X given Y, we now have the joint pmf$ 
    p_(X,Y) (x,y) = p_(X|Y) (x|y) p_Y (y) 
$ 
and the joint pdf $ 
    f_(X,Y) (x,y) = f_(X|Y) (x|y) f_Y (y)
$

=== Independency of X and Y 
discrete r.v. X and Y are independent iff $ 
    p_(X|Y) (x|y) = p_X (x)
$ 
continuous r.v. X and Y are independent iff $ 
    f_(X|Y) (x|y) = f_X (x)
$


== Conditioning on the random variable
=== Conditioning X on y

for independent r.v. X and Y, we can condition on Y and have the conditional expectation of X given Y = y as $ 
    E[g(X)|Y=y] = E[g(X)] quad"and" E[g(X)|Y=y] = E[g(X)]
$
=== COnditioning X on X
For a r.v. X, we can condition on X itself, and have the conditional expectation of X given X = x as $ 
    E[g(X)|X=x] = g(X)
$
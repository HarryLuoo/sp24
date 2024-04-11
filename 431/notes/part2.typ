#set math.equation(numbering:"(1)")
#set heading(numbering: "1.1")
#pagebreak()


= Random Variables
#image("rvSummary.png")

== Discrete random variable
Discrete random variables are random variables that can take on a countable number of values. It comes naturally from discrete, finite or infinitly countable sample  spaces. (As briefly discussed in @sec.discreteSampleSpace)

 For $A = {k_1,k_2,...,} $ s.t. random variable$X in A$, or $P(X in A) = 1$, X is a random variable, with possible values $k_1,k_2,...$ and $P(X=k_n)>0$
=== Probability Mass Function (pmf)
The PMF is a function that defines the probability distribution for a discrete random variable. It gives the probability of the random variable taking on each possible value. The PMF, denoted as $ p_X (k) = P(X=k) ", where" k "are possible values of X" $ It is a function of k, and $ p_X : S → [0, 1], $ where:

S is the support set, i.e., the set of all possible values that the discrete random variable X can take.
[0, 1] represents the range of the function, as probabilities are always between 0 and 1.
For each value k in the support set S, the PMF assigns a probability p_X(k), which represents the likelihood of the random variable X taking the value k.

The PMF satisfies the following properties:

Non-negativity: $p_X(k) >= 0$ for all k in S.\
Total probability: $sum_k p_X(k) = 1$ where the sum is taken over all k in S.\


Example: For a fair six-sided die, the PMF would be $P(X = x) = 1/6$ for $x = 1, 2, 3, 4, 5, 6$. Or more elegantly,$ p_X (k)=1/6,  "for every" k in {1,2,3,4,5,6} $ 

== continuous Random Variables
Not rigorously defined in this class, but a continuous random variable is one that can take on any value in a range. The probability of a continuous random variable taking on a specific value is 0. 
It came natually from continuous sample spaces.The probability is assigned to intervals of values, and they are assigned by the *probability density function*.
=== Probability Density Function (pdf)
continuous r.v are defined in this class by having a probability density function.\
A random variable X is continuous if there exists a function f(x) such that $ 
integral_(-infinity)^(infinity) f(x)  dif x  =1, f(x) >0 "everywhere" \ "and" P(X<=b) = integral_(-infinity)^b f(x) dif x  <=> P(a<= X <= b) = integral_a^b f(x) dif x
 $ 

 === Cumulative Distribution Function (cdf)
cdf of a r.v. is defined as $ F(x) = P(X<=x) $
and it follows that $ 
P(a< X <= b) = P(X <=b) - P(X<=a) = F(b) - F(a) 
 $ <eq.defCDF>
- Continuous r.v.
  
  it looks suspiciously like an indefinite integral, and when we are dealing with continuous r.v., it is.
  #rect(inset: 8pt)[ $ 
  display(F(s) = P(X<= s) = integral_(-infinity)^(s) f(x)  dif x 
  )$ ] 
  Recall the fundamental theorm of calculus, $ F'(x) = f(x), $ so the pdf is the derivative of the cdf.\

- Discrete r.v.
  
  pmf and cdf is connected by $ F(x) = P(X <= s) = sum_(k<=x) p_X(k) $
  
   where the sum is taken over all k such that $k<=x$.\ 
  In english, the cdf is the sum of the pmf up to the value x, or "compound probability thus far"

  If the cdf graph is stepped (piecewise constant), it is a discrete r.v. If it is continuous except at several points, it is a continuous r.v.

== Expectation and Variance
=== Expectation
+ Exp of discrete r.v. is defined as $ E(X) = sum_k k P(X=k) $ where the sum is taken over all possible values of X. It is the weighted average of the possible values of X, where the weights are given by the probabilities.
Expectation is a linear operator, i.e. $ E(a X + b) = a E(X) + b $ for any constants a and b.

  - exp of *Bernoulli* r.v. is $ E(X) = p $ where p is the probability of success.
  
  - exp of *binomial* r.v. is $ E(X) = n p $ where n is the number of trials and p is the probability of success.
  
  - exp of *geometric* r.v. is $ E(X) = 1/p $ where p is the probability of success.

+ Exp of continuous r.v. is defined as $ 
  E(X) = integral_(-infinity)^(infinity) x f(x) dif x 
  $ 
  where the integral is taken over the entire range of possible values of X. It is the weighted average of the possible values of X, where the weights are given by the probability density function. 

  - exp of *uniform* r.v. is $ 
    E(X) = (a+b)/2 
  $ 
    where a and b are the lower and upper bounds of the interval.

=== Expectation of a function of a random variable
When we have a function of a random variable, we can find the expectation of that function by applying the function to each possible value of the random variable and taking the weighted average of the results.
- if X is a discrete r.v. with pmf p_X(k), and g is a function of X, then $ E(g(X)) = sum_k g(k) p_X(k) $ 

- if X is a continuous r.v. with pdf f(x), and g is a function of X, then $ E(g(X)) = integral_(-infinity)^(infinity) g(x) f(x) dif x $


=== Moments, and moment generating function

+ The *nth moment* of the random variable X is the expectation $E(X^n)$.

  - X as discrete r.v. with pmf p_X(k), the nth moment is $ E(X^n) = sum_k k^n p_X(k) $
  - X as continuous r.v. with pdf f(x), the nth moment is $ E(X^n) = integral_(-infinity)^(infinity) x^n f(x) dif x $
  
+ The *moment generating function* of a 
  - discrete random variable X is defined as $ 
  M_X (t) = E(e^(t X)) = sum_k e^(t k) p_X(k)
  $ 
  - continuous random variable X is defined as $
  M_X (t) = E(e^(t X)) = integral_(-infinity)^(infinity) e^(t x) f(x) dif x
  $ It is a function of t.
  
  We can easily find the nth moment of X by taking the nth derivative of the moment generating function with respect to t and evaluating it at t = 0. i.e. $ E(X^n) = (dif )/(dif t) M_X (t=0) $

=== Variance
The variance of a random variable X is a measure of how much the values of X vary around the mean. It is defined as the expectation of the squared deviation of X from its mean. i.e. $ sigma^2 = "Var"(X) = E((X - E(X))^2)
 $
alternatively, $ "Var"(X) = E(X^2) - (E(X))^2 $
Variance is not a linear operator, i.e. $ "Var"(a X + b) = a^2 "Var"(X) $ for any constants a and b.
+ variance of bournoli r.v. is $ p(1-p) $
+ variance of binomial r.v. is $ n p (1-p) $
+ variance of geometric r.v. is $ (1-p)/(p^2) $
+ variance of uniform r.v. is $ (b-a)^2/12 $


= continuous Distribution
Based on different pdf, we have different behaviors of random variables. We call them distributions.
== Uniform Distribution
r.v. X has the uniform distribution on the interval [a,b] if its pdf is $ f(x) = cases(display(1/(b-a)) "for" a<=x<=b,  0 "otherwise") $

== Normal (Gaussian) Distribution
=== standard normal distribution
r.v. Z has the Standard normal distribution if its pdf is $ f(z) = phi(z) = 1/sqrt(2π) e^(-z^2slash 2) $ where z is the standard normal r.v. and phi is the standard normal pdf.
It's abbrieviated as $Z ~ N(0,1)$ where 0 is the mean and 1 is the variance.

- The *cdf* of the standard normal distribution is denoted as $ Φ(z) = P(Z <= z) = integral_(-infinity)^(z) phi(z) dif z $
  Check for table for values of $Φ(z)$

=== normal distribution (generalized)
two parameters: the mean μ and the variance $sigma^2$ . The pdf of a normal distribution is given by the formula: 
$ f(x) = 1/(sqrt(2π sigma^2)) exp[-(x-μ)^2/(2σ^2)] $
abbrieviated as $X ~ N(μ,σ^2)$

- Linearity of normal distribution
  
  If $X~ N(mu, sigma^2), Y = a X + b$, then $Y ~ N(a mu + b, a^2 sigma^2)$  

- *normalization of normal distribution*
  For $X~ N(mu, sigma^2)$, we can standardize it to $Z ~ N(0,1)$ by $Z = (X - mu)/sigma$ 


= Approximations of Binomial Distribution
Recall: *Binomial distribution* is the distribution of the _number of successes_ of n independent Bernoulli trials. It has two parameters: the number of trials n and the probability of success p.

Depending on the probability of success p and the number of trials n, the binomial distribution can be approximated by the normal distribution or the Poisson distribution.



== Central limit theorem (approximation with normal distribution)
 If n is large and p is not too close to 0 or 1, the binomial distribution can be approximated by the normal distribution. 

For $S_n ~ "Bin"(n,p) space ; space E(S_n)=n p space ,  "Var" ( S_n)= sigma^2 = n p(1-p),$ 
$ lim_(n ->infinity ) P(a <= (S_n - mu )/(sigma) <= b) = integral_(a )^(b  ) phi(x) dif x =Phi(b) - Phi(a) $
where phi is the standard normal pdf. This is the central limit theorem, which states that the binomial random variables approaches a normal distribution when $n p (1-p) > 10$ . 

=== continuity correction
$ 
    P(a <= S_n <= b) = P(a-0.5 <= S_n <= b+0.5)
$ 
where S~Bin(n,p) and a,b are integers. Useful when a,b are close, and np(1-p) is not large.

=== Law of large numbers
For $ 
    S_n ~ "Bin"(n,p) space ; space E(S_n)=n p , E(S_n/n) = p\
    P(|S_n/n - p| < epsilon) -> 1 "as" n -> infinity
$ In English, this is saying that, as n is large, the frequency of success in n trials will converge to the probability of success p.


=== Confidence interval
In most cases, if real probability of success is unknown, we can use the Law of large number to 
1. approximate p
2. find confidence interval $(hat(p)-epsilon, hat(p  ) + epsilon )$  (know how accurate the approximation is.)
 Connecting law of large number with CLT, we can proof that $ 
     P(|hat(p) - p| < epsilon) >= 2Phi(2epsilon sqrt(n) ) - 1
 $ 
 where, $2Phi(2epsilon sqrt(n) ) - 1$ is the confidence level, i.e. how confident we are that the real probability is in the interval.


 == Poisson Distribution
 === Poisson r.v.
 A discrete r.v. L has the Poisson distribution with parameter λ>0 if its pmf is $
  p_L (k) = e^(-λ) λ^k/k! 
  $ for k = 0, 1, 2, ...
- write $L ~ "Poisson"(lambda)$ 

- The mean and variance of a Poisson r.v. are both equal to λ.

=== Law of rare events
For $S_n ~ "Bin"(n, lambda/n), "where" lambda/n <1$, S_n follows the law of rare events,
$ 
 lim_(n  -> infinity)  P(S_n = k) = e^(-lambda) lambda^k/k!
$ 
The distribution Bin($n,lambda/n$ ) approaches Poisson($lambda$) distribution, where $E(S_n) = lambda$ 

For a fixed n, to quantify the error in approximation, we have:


Let X~Bin(n,p), and Y~Poisson($lambda$), where $lambda = n p$ 

then for any subset $ A subset.eq {0,1,2,...,n}, k in A \ 
|P(X = k) - P(Y = k)| <= n p ^2  
$
if $n p ^2 <1$, then the approximation is good, and that $ 
    P(X =k ) approx P(Y = k)= e^(-lambda) lambda^k/k!
$ 

== Exponential Distribution

No mentioning where it comes from, but will be told when "can be modeled by exponential distribution"
A continuous r.v. X has the exponential distribution with parameter λ>0 if its pdf is $ 
  f(x) = cases(display(λ e^(-λ x)) "for" x>=0, 0 "otherwise")
  $
  Write $X ~ "Exp"(lambda)$
  The cdf is found by integrating the pdf, $
  F(x) = cases(display(1 - e^(-λ x)) "for" x>=0, 0 "otherwise")
  $
  Expectations and variance are
  $ 
  E(X) = 1/lambda , "Var"(X) = 1/lambda^2 
  $ 
- EXp distribution is memoryless, i.e. $ P(X > t+s | X > t) & = P(X> t+s, X >t)/P(X>t) \ 
& = P(X>t+s)/P(X>t) \ 
& = (e^(-lambda(t+s)) )/(e^(-lambda t) ) \ 
& = e^(-lambda s) \
& = P(X>t)
  $ for all s,t > 0

= Joint Distribution
== discrete joint distribution
- definition: $ 
    p(k_1, k_2,k_3) = P(X_1 = k_1, X_2 = k_2, X_3 = k_3) 
$ for r.v. $X_1 = k_1, X_2=k_2, X_3=k_3$

- expectation: 
  $ 
    E(g(X_1, X_2, X_3)) = sum_(k_1) sum_(k_2) sum_(k_3) g(k_1, k_2, k_3) p(k_1, k_2, k_3) $
- marginal distribution:
  $ 
    p_1(k) = sum_(k_2) sum_(k_3) p(k, k_2, k_3) 
  $ 
- Multinomial distribution
  when looking for the probability of some independent events together, we can use the multinomial distribution.
  $ 
    P(X_1 = k_1, X_2 = k_2, X_3 = k_3) = n!/(k_1 ! k_2 ! k_3 !) p_1^(k_1) p_2^(k_2) p_3^(k_3) 
  $ 
  abbreviate this as $(X_1,X_2,...,X_r) ~ "Multi"(n,r,p_1,p_2,...,p_r)$
== Continuous joint distribution
- definition: $ 
    P((X_1,X_2,X_3) in A) = integral_(A) f(x_1, x_2, x_3) dif x_1 dif x_2 dif x_3
    $ for r.v. $X_1, X_2, X_3$ and set $A in Re$
- expectation: $
  E(g(X_1, X_2, X_3)) = integral_(-infinity)^(infinity)integral_(-infinity)^(infinity)integral_(-infinity)^(infinity) g(x_1, x_2, x_3) f(x_1, x_2, x_3) dif x_1 dif x_2 dif x_3
  $
- marginal distribution: $
  f_1(x) = integral_(-infinity)^(infinity)integral_(-infinity)^(infinity) f(x, y, z) dif y dif z
  $

== Independent joint random variables
- Necessary and sufficient Condition: 
  - discrete $ 
    p(x_1, x_2) = p_1(x_1) p_2(x_2) 
  $ 
  - Continuous $ 
    f(x_1, x_2) = f_1(x_1) f_2(x_2) 
  $
- If two r.v. depend on different parameters, they are independent. i.e. $ 
    Y=f(X_1,X_2,X_3); quad Z=g(X_(4),X_(5),X_6)\ => Y "and" Z "are independent"
$ 

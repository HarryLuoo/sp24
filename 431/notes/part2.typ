#set math.equation(numbering:"(1)")
#set heading(numbering: "1.1")
= Random Variables
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
The variance of a random variable X is a measure of how much the values of X vary around the mean. It is defined as the expectation of the squared deviation of X from its mean. i.e. $ "Var"(X) = E(X^2) - [E(X)]^2 $



== continuous Distribution
Based on different pdf, we have different behaviors of random variables. We call them distributions.
=== Uniform Distribution
r.v. X has the uniform distribution on the interval [a,b] if its pdf is $ f(x) = cases(display(1/(b-a)) "for" a<=x<=b,  0 "otherwise") $

=== Normal (Gaussian) Distribution
The normal distribution is a continuous probability distribution that is symmetric and bell-shaped. It is characterized by two parameters: the mean μ and the standard deviation σ. The pdf of a normal distribution is given by the formula: $ f(x) = 1/(σ sqrt(2π)) e^(-(x-μ)^2/(2σ^2)) $




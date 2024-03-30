
#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))


= HW 6, Harry Luo

== ex4.6
recall from lec the normal approximation formula, where $ P (|hat(p)-p|< epsilon)>= 2 Phi(2epsilon sqrt(n))-1 $ <eq1>
For this problem, we have $epsilon = 0.02, 2 Phi(2epsilon sqrt(n))-1 >= 0.95.$ We
can solve for n when $n = n_min$ with the following:
$ 2Phi(2epsilon sqrt(n)) -1= 0.95\ 
Phi(2*0.02sqrt(n))=1.95/(2) $
accroding to the table of Phi values, we have
$ 0.04sqrt(n) = 1.96\ 
=> #rect(inset: 8pt)[ $ display(n = 2401)$ ]   $ 
therefore the smallest size should be 2401

== ex4.8
Rolling a biased die can be modeled as a binomial distribution as either "rolling
the number 6" or not. We denote an unknown probability of rolling a 6 as p, and
denote the number of getting 6 as X. We write $X~"Bin"(1000000,p)$.\ 
We want to find a confidence interval for p with 0.999 confidence. Using @eq1,
we have $n= 1000000, P|(hat(p) - p| < epsilon) = 0.99$. We need to solve for $epsilon$ at
the lower bound, where: 
$ 2Phi(2epsilon sqrt(n))-1 =0.999\
=> Phi(2*1000epsilon)= 0.9995 \
=> 2000epsilon approx 3.32\
epsilon = 0.00166 $ 
Since the number 6 shows up 180000 times when rolling 1000000 times, $ hat(p) = (180000)/(1000000) = 0.18$.\ #rect(
  inset: 8pt,
)[ Therefore, the confidence interval is $ display([hat(p) -epsilon,hat(p) +epsilon]=[0.1783,0.1817])$ ] 


== ex4.10
We assume that scoring a goal in a certain game is a rare event for the player, we can approximate the r.v. X corresponding to the number of goals scored by the player as a Poisson distribution $ P(X = k) = (e^(-lambda) lambda^(k) )/(k!) $ 
probability of player scoring 0 goals is $P(X=0) = e^(-lambda) lambda^(0) /0! = e^(-lambda)$\

Thus the probability of scoring at least 1 goal is $1 - e^(-lambda) = 0.5 => lambda = ln(2) approx 0.693$\
We can now calculate the approximation for scroing 3 goals as #rect(inset: 8pt)[ $ display(P(X= 3) =(e^(-lambda) lambda^(k) )/(k!) = (e^(-0.693) 0.693^3)/(3*2*1) = 0.028)$ ]  


== ex4.34
Assume that accidents happen rarely and independently. We can model the number of accidents happen in a week with a Poisson distribution. We denote the r.v. X as the number of accidents in a week, and we have $X~"Poisson"(lambda)$, where lambda is the average number of accidents in a week, given as $lambda = 3$ Therefore, the probability of *at most* 2 accidents happening next week can be calculated as $ P(X=1) +P(X=2) +P(X=0) = (e^(-3)) ((3^(1) )/(1) + (3^(2) )/(2*1)+(3^(3) )/(3*2*1))  = #rect(inset: 8pt)[ $ display(0.59744)$ ]   $ 

= ex4.46
We can consider the series of trials of "flipping a coin 5 times each day for 30 days" as a binomial distribution, where we either get 5 tails each day or not. We denote the r.v. X as the number of days that we get 5 tails. The probability of having 5 tails in a day is $p=(1)/(2^5) = 1/32$. Therefore, $X~"Bin"(30,1/32)$\

Since $n p(1-p) = 465/512$, the normal approximation is not valid. 

Poisson approximation is a bettor choice, especially when our $n p = 15 slash 512 $ is small.

We approximate the distribution of X with r.v. $Y ~"Poisson"(lambda)"where" lambda = E(X)=n p = 30/32 = 0.9375$.
Thus, $ P(X=2) approx P(Y=2)=(e^(-0.9375) 0.9375^(2) )/(2) approx #rect(inset: 8pt)[ $ display( 0.1721)$ ] $ 

== ex5.2
- (a  ) 
Given the MGF, we can calculate its derivatives as $ M'(t) = -4/3 e^(-4t) +5/6 ,  M''(t) = 16/3 e^(-4t) 25/6 e^(5t)  $ 

We can get $ E(X ) = M'(0) = 1/2, E(X^2) = M''(0)=19/2 \
=> "Var"(X)=E(X^2)-E(X)^2 = 37/4 $ 

- (b) 
  
Given the MGF, we observe that the possible values for r.v. are 0, -4, 5; and the corresponding probabilities are 1/2, 1/3,1/6. Thus the discrete probability mass function is $P(X=0) = 1/2, P(X=-4) = 1/3, P(X=5) = 1/6$. From which we can calculate
We can calculate $ E(X) = -4*1/3 + 5*1/6 = 1/2; E(X^2) = 1/3*16 + 1/6 * 25 = 19/2\ 
"Var"(X) = E(X^2)-E(X)^2 = 37/4 $ 
As calculated in (a).



== ex5.18
- (a) 
Given $X~"Geom"(p)$,  the probability mass function is $P(X=k) = p(1-p)^(k-1)$, where k=1,2,3,...

$ M_X (t)=E(e^(t X) )=&sum_(k=1)^(infinity)e^(t k) P(X=k) =  sum_(k=1)^(infinity)e^(t k)p(1-p)^(k-1) = p e^(t) sum_(k=1)^(infinity)(e^(t) (1-p))^(k-1) \ =&  p e^(t) sum_(k=0)^(infinity)(e^(t) (1-p))^(k)    $ 
when $e^(t) (1-p)<1, "i.e." t < ln(1/(1-p)),$ the series converges, and  $ #rect(inset: 8pt)[ $ display(M_X (t) = (p e^(t))/(1-e^(t)(1-p) ) )$ ] $  
while $t >= ln(1/(1-p))$ , the series diverges, and $ M_X (t) = +infinity $


- (b)
$ E(X)=M'_X(0)=  (p e^(t) )/((1-e^(t)(1-p) )^2) bracket.r _(t=0) = 1/p.\ 
E(X^2)=M''_X (0)=(p e^(t) )/((1-e^(t) (1-p))^2)|_(t=0) = 2/p^2 - 1/p \ 
"Var"(X) = E(X^2)-E(X)^2 = 1/p^2 - 1/p $  
== ex 5.20

- (a) by def, we know $ M_X (t) =& integral_(-infinity)^(infinity)e^(t x) * 1/2 e^(-|x|)  d x = 
 1/2integral_(0)^(infinity)e^((-1-t)x)d x + 1/2integral_(-infinity)^(0)e^((t+1)x) dif x  \ && "x -> -x" \ =&   1/2integral_(0)^(infinity)e^((-1-t)x)d x + 1/2integral_(0)^(infinity)e^(-(t+1)x) dif x  $ 

Noticing that $integral_(0)^(infinity)e^(-c x)   dif x $ converges to $1/c$ iff c>0, we can get $ #rect(inset: 8pt)[ $ display(M_X (t) = cases(display(1/2(1/(1-t))+1/2(1/(1+t)) = 1/(2(1-t^2)) ", when" -1 <t<1 ),infinity "O.W." ))$ ]  $    

- (b)
  Taylor expanding $M_X (t)$ at t=0 when $-1 <t<1$, we have $ M_X (t) = 1/(2(1-t^2)) = 1/2 + t^2/2 + t^4/2 + t^6/2 + ... = sum_(k=0)^(infinity) 1/2t^(2k)  $ 

  Therefore, #rect(inset: 8pt)[ $ display("odd-numbered moments are all 0, and the 2k-th moment is" 1/2 t^(2k)  )$ ] 
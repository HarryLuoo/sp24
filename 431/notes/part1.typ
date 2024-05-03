
#set math.equation(numbering:"(1)")

= Sample Spaces, collection of events, probability measure
- Sample space $Omega$: set of all possible outcomes of an experiment. Comes in n-tuples where n represents number of repeated trials.
- Collection of events $cal(F) $: subset of state space to which we assign a probability.
- Probability measure: function that assigns a probability to each event.$P: F -> RR$. 
  - Range is $[0,1]$.
- Axioms 
  - $P(Omega) = 1 "and" P(nothing)=0$
  - For pairwise disjoint events $A_1, A_2, ...$, \ $P(A_1 union A_2 union ...)  =  P(A_1) + P(A_2) + ...$

#line(length:100%)
= Sampling
== Uniform sampling
If the sample space $Omega$ has finitely many  elements and each outcome is equally likely, then for any event $A subset Omega$ we have 
  $ 
P(A) = (\# A)/(\# Omega)       
  $ where \# means the "cardinality" of the set.
  
- uniform sampling: each outcome is equally likely
- Binomial coeff $
binom(n,k) = n!/(k!(n-k)!)
$
== Sampling with Replacement, order matters
- ex: sample K distinct marked balls from N balls in a box, *with* Replacement
  $
  Omega = {1,2,3,...,N}^K\
  ||Omega|| = N^K\
  P("none of the balls is marked 1")= (N-1)^K/N^K
  $
- ex: sample K distinct marked balls from N balls in a box, *without* Replacement
  $
  Omega = {(i_1, i_2, ..., i_K) | i_1, ..., i_K in {1,2,...,N}, "distinct"\
  ||Omega|| = binom(N-1,K)\
  P("none of the balls is marked 1")= binom(N-1,K)/binom(N,K)=(N-K)/N
  $
  
== Order
  - order matters: $A_n^k=(n!)/(n-k)!$
  - order doesn't matter: $binom(n,k)=C_n^k=(n!)/(k!(n-k)!)$
#line(length:100%)
= Infinite Sample Spaces
== discrete <sec.discreteSampleSpace>
$ Omega = {infinity, 1, 2, ...} $
== continuous

$
P([a',b'])=("length of" [a',b'])/("length of"[a,b])\
"single point, or sets of points:" P({x})=P(union_(i=1)^infinity {x_i})=0 \
$

- Complements: $P(A)=1-P(A^C)$
#line(length:100%)

= Conditioinal Probability, Law of Total Prob., Bayes' Theorem, Independence
== Conditional prob. 
$
  P(A|B)=(|A sect B|)/(|B|) => P(A B)= P(B)P(A|B)
  $ \ (new sample space is B, total number of outcomes is $A sect B$)
== Law of total probability: 
Given partitions $
  B_1, B_2, ...$ of $Omega$, $
  P(A)=sum_i P(A|B_i)P(B_i)
  $
== Bayes' Theorem: 
Given events A, B, P(A) and P(B) >0,$
 P(B_i|A)=(P(A|B_i)P(B_i))/P(A)\
 $
 Considering the law of total prob., the generalized form, when $B_i$ are partitions, is given as: $
 P(B_i|A)=(P(A|B_i)P(B_i))/(sum_j P(A|B_j)P(B_j))
$
== Independence: 
$
  P(A B)=P(A)P(B) <=> P(B|A)=P(B)
  $\
  Note: By virtue of conventions, we write $A sect B$ as $A B$ in Probability.\
  If A,B,C,D are independent, it follows that $P(A B C D)=P(A)P(B)P(C)P(D)$; however, the inverse is not always true.
  - Independence of Random Variables (messy as hell...)
Given 2 random variables $
  X_1 in {x_11, x_12, x_13,..., x_(1m)}\ 
  X_2 in {x_21, x_22, x_23,..., x_(2n)}\
  "Random variables X_1 and X_2 are independent" <=> \
  P(X_1=x_(1i), X_2=x_(2j))=P(X_1=x_(1i))P(X_2=x_(2j))\
  $
  Need to check n*m equations to verify independence.


  == Conditional Independence:
  For events $A_1,A_2,...,A_n, B$, any set of events in A: $A_(i 1),A_(i 2),A_(i 3)$, they are conditionally independent given B if $
P(A_(i 1) A_(i 2)A_(i 3)|B)=P(A_(i 1)|B)* P(A_(i 2)|B)* P(A_(i 3)|B)
  $ 


  = Independent Trials, Distributions
  == Bernoulli dirtribution: 
  a single trial, with success probability p, and failure probability 1-p. Prameter being the success probability.
  $
  X~"Ber"(p) => P(X=x)=p^x*(1-p)^(1-x), x in {0,1}
  $

  == Binomial Distribution: 
  multiple independent Bernoulli trials, with success probability p, and failure probability 1-p. Parameters being the number of trials $n$ and the success probability $p$.
  $
  X~"Bin"(n,p) => P(X=k)=binom(n,k)p^k*(1-p)^(n-k), k in {0,1,...,n}
  $
  == Geometric distribution: 
  multiple independent Bernoulli trials with success probability $p$, while stoping the experiment at the first success. 
  $
  X~"Geom"(p)=p*(1-p)^(k-1), k in {1,2,...}
  $
  == Hypergeometric distribution: 
  There are N objects of type A, and $N_A- N$ objects of type B. Pick n objects without replacement. Denote number of A objects we picked as k. Parameters are $N, N_A, n$.
  $
  P(X=k)= (binom(N_A,k)binom(N-N_A,n-k))/(binom(N,n))\ "choose k from N_A, choose n-k from N-N_A, divide by total number of ways to choose n from N"
  $
  

= HW 3\ Harry Luo

#set math.equation(numbering: "(1)")

== ex2.14 \
A and B being disjont events means that $P(A sect B)=(A sect B)/ Omega = 0$. Since A and B are independent iff $P(A sect B)=P(A)P(B)$, we have $P(A)P(B)=0$, which means either $P(A)=0$ or $P(B)=0$.
\

== ex2.18 \
- (a) Given that there are 90 numbers to choose from with replacement, each outcome has a probability of $1/90$. We observe that $P(X = k) = 1/9 "for" k in {1,2,...,9}$. Similarly, $P(Y = k) = 1/10 "for" k in {0,1,2,...,9}$. For each pair of possible values $x,y$, we have $
cases(
P(X = x, Y = y) = P(10x+y)=1/90,
P(X = x)P(Y = y) =1/9 * 1/10 = 1/90)=>P(X = x, Y = y) = P(X = x)P(Y = y).
$
Therefore, X and Y are independent random variables.

- (b) Consider the case where we pick the number 10 from the set. Since this is the only number for $Z=1+0=1$, we have $P(Z=1)=P(10)=1/90$. However, as argued in (a), $P(X=1)=1/9$.  It follows that: $
cases(P(X=1)P(Z=1)=1/9 * 1/90 = 1/810,
P(X=1 sect Z=1)=P(10)=1/90)=>P(X=1 sect Z=1) != P(X=1)P(Z=1).
$
Therefore, by the virtue of the counterexample, X and Z are not independent random variables.


== ex2.23 \
- (a)
  Given that the event of having an accident on a given day is independent of the event of having an accident on any other day, the probability of no accidents in 7 days is $0.95^7=0.6983$
- (b)
  Denote random variable of having k days with at least one accident as A_k, with a success probability of $1-0.95=0.05$.  $A_k ~ "Bin"(30,0.05)$. Therefore, having k=2 days with accident, we write$
  P(A_k=2)=binom(30,2)*0.05^2*0.95^28=0.259
  $
- (c) We mark N as the number of days, or trials, until the first day with accident occurs. N now has a geometric distrubution $N ~ "Geom"(0.05)$. We need to find the probability of having an accident after day 4 but on or before the 10th day, i.e. $P(4<N<=10)$. \ According to the probability mass function of the geometric distribution, we have $
P(4<N<=10)=sum_(k=5)^10 (1-p)^(k-1)p=sum_(k=5)^10 0.95^(k-1)*0.05=0.216
$



== ex2.52 \
To check for mutual independence, we need to verify the follwoing:$
P(A sect B)=P(A)P(B )\
P(A sect C  )=P(A )P(C )\
P(B sect C  )=P(B )P(C )\
P(A sect B sect C  )=P(A )P(B )P(C )
$
\
Check:
- $P(A sect B)=P(A)+P(B)-P(A union B)=0.3+0.2-0.44=0.06\
P(A)P(B)=0.3*0.2=0.06=P(A sect B)\
$
 $P(A sect C) = P(C)-P(A^c sect C)= 0.03 = P(A )P(C  )
  $
 $P(B sect C) =0.02= P(B  )P(C  )
$\ 
 
 $P(A sect B sect C) &= P(A union B union C) - P(A)-P(B)-P(C)+P(A sect B)+P(A sect C)+P(B sect C)\ &=0.06=P(B)P(A)P(C)
  $
All of the above equations hold, so A, B, and C are mutually independent.

== ex2.54 \
- (a) 
Recognizing that $A=(A sect B) union (A sect B^c)$ while $A sect B "and" A sect B^c$ are disjont, we have 
$P(A)=P(A sect B)+P(A sect B^c)=P(A|B)P(B)+P(A|B^c)P(B^c)=1/3(P(B)+P(B^c))\ = #rect()[1/3]
$
- (b)
From (a), $P(A)=P(A|B)=P(A|B^c)=1/3$.
Consider that
$
cases(P(A|B)=P(A sect B)/P(B)=1/3,
P(A)=P(A|B))=> #rect()[$P(A sect B)=P(A)P(B)$]
$
Independence of A and B is thus established.



== ex2.58 \
- (a) We need to check the following for pariwise independence:$
  P(A sect B)= P(A)P(B)\
  P(A sect C)= P(A)P(C)\
  P(B sect C)= P(B)P(C)\
  $
The events $A sect B, A sect C, B sect C$ all mean that all three people have the same birthday. 
For three people to have the same birthday, the first person have 365 choices, the second person has 1 choice out of 365, and the third person has 1 choice out of 365. Therefore, $P(A sect B)= P(A sect C)=P(B sect C)  =1/365^2$.\
Meanwhile, for two people to have the same birthday, the first person has 365 choices, the second person has 1 choice out of 365. Therefore, $P(A)=P(B)=P(C)=1/365$.\
It follows that $
P(A sect B)= P(A)P(B)=1/365^2
$ $
P(A sect C)= P(A)P(C)=1/365^2
$and $
P(B sect C)= P(B)P(C)=1/365^2
$ Therefore, A, B, and C are pairwise independent.


- (b)
No. Since the  event $A sect B sect C "is the same as" A sect B$ since they both mean all three people have the same birthday, we have $P(A sect B sect C)=P(A sect B)=1/365^2$. \ However, $P(A)P(B)P(C)=1/365^3!=P(A sect B sect C)$.\ Therefore, A, B, and C are *not mutually independent.*

== ex2.61\
- (a)Mark drawing green ball as success. Since the balls are drawn with replacement, each trials are independent. Therefore, the success rate of each trial is $P(G)=3/7$. With nine draws, the number of success, or green draws, follows a binomial distribution $X ~ "Bin"(9,3/7)$.\
$
P(X>=1)=1-P(X=0)=1-binom(9,0)*(3/7)^0*(4/7)^9=1-(4/7)^9 = #rect()[0.994]
$
$
P(X<= 5)=sum_(k=0)^5 binom(9,k)*(3/7)^k*(4/7)^(9-k)=0.865
$

  
- (b)
Mark the number of trials before drawing the first green ball as N. N follows a geometric distribution $N ~ "Geom"(3/7)$. We need to find the probability of drawing the first green ball on or before the 9th draw, so,
$
P(N<=9)=sum_(k=1)^9 (1-p)^(k-1)p=sum_(k=1)^9 (4/7)^(k-1)*(3/7)=1-(4/7)^9 = #rect()[0.994]
$
- (c)
$
P(X>=1)=P(N<=9) 
$
are the same. This is because that the probability of drawing the first green ball on or before the 9th draw is the same as the probability of drawing at least one green ball in 9 draws.
== ex2.71 \
We make the following notations: $T_k$ as the event of the kth flip is a tail. Denote $R_n=A_1 sect A_2 sect...sect A_n$representing the first n flips are tails.\ $B$ as the event of the coin is biased, and $F$ as the event of the coin is fair. 
  - (a)Using baye's law, $
  P(B|R_n)&=P(R_n|B)P(B)/P(R_n)= P(R_n|B)P(B)/(P(R_n|B)P(B)+P(R_n|F)P(F))\ &=((3/5)^n 1/10)/((3/5)^n 1/10+(1/2)^n 9/10)= ((3/5)^n )/((3/5)^n+(1/2)^n 9)
  $
 When n=1, $P(B|R_1)=2/17$\ when n=2, $P(B|R_2)=4/29$
  - (b)
 setting equation (15) equal to 0.9, we get $n=24.1027$. Since n is an integer, we can say with 90% confidence that the coin is biased if the first 25 flips are tails.

  - (c)
$
P(T_n+1|R_n)= &(P(R_n+1)/P(R_n)\ =&(P(R_(n+1)|B)P(B)+P(R_(n+1)|F)P(F))/(P(R_n|B)P(B)+P(R_n|F)P(F))\ =& (( (3/5)^(n+1) *1/10 ) + ( (1/2)^(n+1) * 9/10 ))/(
( (3/5)^n *1/10 ) + ( (1/2)^n * 9/10 ))

$



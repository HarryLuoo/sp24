= Math 431 hw2
= Harry Luo
#set math.equation(numbering: "(1)")

==
- ex 1.15//
*(a)* Following the definition of events $W,G,R$, we describe the event of "not all three colors are present" as $W sect G sect R$. Then, according to inclusion-exclusion principle, we have 
$ P("did not see all three colors") = & 
 P(W sect G sect R)\ = & P(W) + P(G) + P(R) \ & - P(W G) - P(W R) - P(G R) \ & + P(W G R)
 $
Note that, for each draw, we are picking 3 balls (excluding one white ball) from 4, so after 3 draws, $P(W) =(3/4)^2 $. Similarly, $P(G) = (3/4)^2$, $P(R) = (2/4)^2$.\
Notice that if neither white nor green is drawn, then the only possibility is that we draw 3 red balls. If we label the balls to differenciate the 2 red balls in urn, we have $P(W G) = (2/4)^2$. \
 Similarly, $P(W R) = (1/4)^2$, $P(G R) = (1/4)^2$. 
 \ Finally, $P(W G R) = 0$, since it is impossible to draw 3 balls without drawing any of the 3 colors.\
Combining all of the above, 
$
P(W sect G sect R) &= (3/4)^2 + (3/4)^2 + (2/4)^2 - (2/4)^2 - (1/4)^2 - (1/4)^2 + 0 \ &= 13/16
$

*(b)* We can represent the complement of the event "did not see all three colors" as "saw all three colors". Then, $P("did not see all three colors")= 1- P("saw all three colors")$\
The event "saw all three colors" can be analyzed as follows: the three colors are picked in order, with $3 !=6$ number of ways to pick the colors. Consider there are two red balls, we have in total $2*6$ = 12 number of ways to pick the balls. Then, $
P("saw all three colors")=12/4^3 = 3/16
$\
Therefore, $P("did not see all three colors") = 1- 3/16 = 13/16$.


- ex 1.18 \
The sample space of X is ${3,4,5}$. The probability mass function of each value is:$
& P(X=3) = "letters in ARE"/"total letters"=3/16\
& P(X=4) = "letters in SOME & DOGS"/"total letters"=8/16=1/2\
& P(X=5) = "letters in BROWN"/"total letters"=5/16
$

#pagebreak()

- ex 1.40\
  We denote the event "at least one color is repeated exactly twice" as $T$, where $T= G sect R sect Y sect W$.
  Therefore, the probability of this event is $
  P(T)= & P(G sect R sect Y sect W) \ = & P(G)+P(R)+P(Y)+P(W)&& "by inclusion-exclusion principle" \ & -P(G sect R)-P(G sect Y)-P(G sect W)-P(R sect Y)-P(R sect W)-P(Y sect W)\ & +P(G sect R sect Y)+P(G sect R sect W)+P(G sect Y sect W)+P(R sect Y sect W)\ & -P(G sect R sect Y sect W) \  $ <eq1>
  When exactly two balls are of the same color, we are picking 2 balls from the 4 spots to be the same color, and then pick the remaining 2 spots randomly from the urn. Since the total number of events is $4^4$, We can calculate $
  P(G)=P(R)=P(Y)=P(W)=(binom(4,2)*3*3)/4^4= 27/128 
  $

  We denote each term in the third line in @eq1 as $P(A sect B)$, where $A,B in {G,R,Y,W}$. The magnitude of the set $A sect B$ is $binom(4,2)$, which is the number of ways to pick 2 colors from 4. Then, we have $
  P(G sect R)=P(G sect Y)=P(G sect W)=P(R sect Y)=P(R sect W)=P(Y sect W)\ = (binom(4,2)/4^4)\ = 3/128
  $
  Since we cannot have 3 colors or 4 colors all appearing twice in the 4 draws, we know that the last two rows in @eq1 are 0. Therefore, $
  P(T)= 3*27/128 - 6*3/128 =45/64
  $
  
  

  - ex 2.4\
  We mark the event of "picking the second urn" as A, and $A^c$ for "picking the first urn" and the event of "picking the ball labeled 5" as B.
  The probability of B could be given as  $
  P(B)=& P(B A)+P(B A^c)\ =&P(B|A)P(A)+P(B|A^c)P(A^c)
  $
Notice that $
P(B|A^c)=0\ P(A)=P(A^c)=1/2 \ P(B|A)=1/3
$
Therefore, $
P(B)=1/3*1/2=1/6
$


- ex 2.10\
We mark the event of "pulled out a x-sided die" as $D_x$, and the event of "outcome of the roll is 4" as F. According to the law of total probability, we have $
P(D_6|F)=P(D_6F)/P(F) = P(F|D_6)P(D_6)/P(F)=(1/6*1/3)/P(F)
$
Notice that $
P(F)=&P(F|D_4)P(D_4)+P(F|D_6)P(D_6)+P(F|D_12)P(D_12)\ = & 1/4*1/3+1/6*1/3+1/12*1/3\ = & 1/12+1/18+1/36\ =&1/6
$

Therefore, Combining equation 12 and 13, we have $P(D_6|F)=(1/18)/(1/6)=1/3$



- ex 2.32\
*(a)* Mark boy as B, girl as G. Sample space $Omega = {B B B,B B G, B G B, G B B, B G G, G B G, G G B, G G G }$.\
Probability measure for each sample point would be $(1/2)^3=1/8$.

*(b)*
Mark the event of there is a boy amongst the children as M, and the event of 2 of the children are girls as N.Then, $M = {B B B,B B G, B G B, G B B, B G G, G B G, G G B,}$. 
Probability of the child not seen given that two are girls,$
P(M|N)&=P(M sect N)/P(N)\ &=P({B G G, G B G, G G B})/P({B G G, G B G, G G B, G G G})\ &=(3/8)/(4/8)\ &=3/4
$


*(c)*
Similar to (b), we mark the event of there is a boy amongst the children as M, and the event of the two yougest children are girls as N. 
$
P(M|N)= P(M sect N)/P(N)=P({G G B})/P({G G B, G G G})=1/2
$


- ex 2.34\ Suppose we put the marked ball in urn 1. Denote the event of "Friend picked the marked ball" as A, and the event "Friend chose urn k" as $B_k$. We also denote that there are m balls in urn 2 $(0<=m<=2)$, and 3-m balls in urn 1.\
  Since there are in total 3 arrangements, and considering that $P(A|B_2)=0$, we can list the following:
  $
  "All 3 balls in urn 1:"&P(A)=P(A|B_1)P(B_1)=1/3*1/2=1/6\
  "2 balls in urn 1:"&P(A)=P(A|B_1)P(B_1)=1/2*1/2=1/4\
  "only the marked ball in urn 1:"&P(A)=P(A|B_1)P(B_1)=1*1/2=1/2\
  $
  
*(a)* Therefore, to minimize $P(A)$, we should put all three balls in one urn.\
*(b)* To maximize $P(A)$, we should put the marked ball in one urn, and the other two balls in the other urn.\
*(C)* when there are one marked ball amongst n balls, we denote the following:\
There are m balls in urn 1 put together with the marked ball $(0<=m<=n)$, and $n-m$ balls in urn 2.\
$
P(A)=P(A|B_1)P(B_1)=1/(m+1)*1/2=1/(2m+2)
$
So, to *minimize* $P(A)$, we should put all the balls in urn 1. \ To *maximize* $P(A)$, we should put the marked ball in one urn, and the other $n-1$ balls in the other urn.


- ex 2.38\
*(a)*
We denote: the event of "the chosen letter is R" is R, and the event of "the kth word is chosen" is $W_k$. Then, we have $
P(R)&=P(R|W_1)P(W_1)+P(R|W_2)P(W_2)+P(R|W_3)P(W_3)+P(R|W_4)P(W_4)\ &=
0+0+1/3*1/4+1/5*1/4\ &=2/15
$

*(b)* There are 4 words in total: 1 of which X=3, 2 of which X=4, 1 of which X=5. So,$
P(X=3)=1/4\
P(X=4)=2/4\
P(X=5)=1/4
$



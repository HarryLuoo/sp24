= Lecture Monday Feb 12
== Review
*Partition of $Omega$*: events $B_1, ..., B_n$ that are pairwise disjoint: $B_1 union ... union B_n = Omega$\
*Law of total probability* $P(A)=P(A|B_1)P(B_1)+ ... + P(A|B_n)P(B_n)$\
*Bayes' Theorem* $P(B|A)=(P(A|B)P(B))/P(A)$, for P(A) and P(B) > 0\
*Independence* for independent events A and B $
P(A|B)=P(A)\ =>P(A sect B)=P(A)P(B)
$ \

== Examples\
- Suppose it rains 25% of the days. WHen it rains, it it cloudy at sunrise 50% of the time. When it doesn't rain, it is cloudy at sunrise 10% of the time. Find:\
*(a)*P(cloudy at sunrise)\
Considering the law of total probability,
$
P("cloudy at sunrise")\
=P("cloudy at sunrise"|"rain")P("rain")+P("cloudy at sunrise"|"no rain")P("no rain")\
=0.5*0.25+0.1*0.75\
=1/5
$

*(b)*P(rain|cloudy at sunrise)\
Consider Bayes' Theorem,
$
P("rain"|"cloudy at sunrise")\
=(P("cloudy at sunrise"|"rain")P("rain"))/P("cloudy at sunrise")\
= (0.5*0.25)/(1/5)\
=5/8
$



==
- Draw a single card from a standard deck of 52 cards. Let A be the event that the card is red, and B be the event that the card is a queen. Show: A and B are independent.

show $P(A sect B)=P(A )*P(B )$\
$P(A sect B)= 1/52 + 1/52 = 2/52$\
$P(A)*P(B)= 1/2 * 1/13 = 1/26$\
$2/52 = 1/26$


------------------------

* Claim: If A and B are independent, then $A^c and B, A and B^c, A^c and B^c$ are independent*

Proove:\
$P(A^c sect B)=P(B)-P(A sect B)\
=P(B)-P(A)P(B)\
=P(B)(1-P(A))\
=P(B)P(A^c)$

-------------------------\
_*Independence of multiple events*_\
Events $A_1, ..., A_n$ are mutually independent if for every collection of events $A_{i_1}, ..., A_{i_k}$, $
P(A_{i_1} sect ... sect A_{i_k})=P(A_{i_1})...P(A_{i_k})
$
for example, for events A,B,C, if 
$
P(a sect b)=P(A)P(B)\
P(A sect C)=P(A)P(C)\
P(B sect C)=P(B)P(C)\
=>P(A sect B sect C)=P(A)P(B)P(C)
$
We say, A,B,C are mutually independent.


=examples\
Roll a fair 4-sided die. let $
A={1,2},B={1,3},C={1,4}
$, $
P(A)=P(B)=P(C)=2/4
$,
$
P(A sect B)=P(A sect C)=P(B sect C)=P({1})=1/4
$,
we  know $
P(A sect B sect C)=P({1})=1/4 != P(A)P(B)P(C)=1/8
$
Not mutually independent.


-----------------------\
== Random varaibles in Independence
For random variables $X_1,X_2,...,X_n$ on the same prob. space, we say they are independent if $
P(X_1 in B_1, X_2 in B_2, ..., X_n in B_n)=P(X_1 in B_1)P(X_2 in B_2)...P(X_n in B_n)
$for all choices of B_k
(Diffidult to check)

- For discrete random variables, we can check independence if and only if $P(X_1=x_1, X_2=x_2, ..., X_n=x_n)= P(X_1=x_1)P(X_2=x_2)...P(X_n=x_n)$ for all choices of $x_1, x_2, ..., x_n$


== examples\
 roll a red die and blue die, $Omega = {1,2,...,6} times {1,2,...,6}$

 


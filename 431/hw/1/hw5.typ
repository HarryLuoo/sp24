#set math.equation(numbering:"(1)")
#set page(margin: (x: 1cm, y: 1cm))

= HW 5, Harry Luo


== 3.65
- (a)$ "Recall that: Var"(a X)=a ^2 "Var"(X), "Var"(X+a) = "Var"(X).\
"Var"(2X+1)= "Var"(2X) = 4 "Var"(X) = 4*3 = 12.
$
- (b) $
E[(3X - 4)^2] =& E[9X^2 - 24X + 16]\ =& 9E[X^2] - 24E[X] + 16\ =& 9*("Var"(X) + E[X]^2) - 24E[X] + 16\
 =& 9*(3+4) - 24*2 + 16\ =& 31.
$


== 3.66
Let $Y ~ "N(0,1)"$. We can express $X$ as $X = sqrt(3)Y + 8$. 
$
P(X> alpha) = P(sqrt(3)Y + 8 > alpha) = P(Y > (alpha-8)/sqrt(3)) \ = 1 - P(Y <= (alpha-8)/sqrt(3))\ = 1- Phi ((alpha - 8)/sqrt(3))  = 0.15\
"using the table of the standard normal distribution, we find that" (alpha-8)/sqrt(3) approx 1.04.\
=> alpha approx 9.8
$

== 3.71
Let noon to be time =0, and random variable $X$ be the time of arrival. $X~N(0,6^2)$
We want to know the prob. of bus not departing by 12:05, that is to find $P(X >= 5)$
$
P(X >= 5) = 1- P(X < 5) = 1 - Phi(5/6) = 1- 0.7967  = 0.2033
$
The prob. of bus not departing by 12:05 is 0.2033.
//4.2, 4.4, 4.16 (a), 4.20, 4.23
== 4.2
let X be the random variable of the number of single pairs. During our darwing, we either get single pairs or non-single pairs, so it is a binomial distribution $X~"Bin"(1000,0.42)$

To calculate prob of getting at least 450 single pairs, we can use the normal approximation to the binomial distribution.
$
P(X >= 450) &= P((X - 1000 * 0.42)/ (sqrt(1000*0.42*0.58)) >= (450 - 1000 * 0.42)/ (sqrt(1000*0.42*0.58)) )\
&=P((X - 420)/ (sqrt(243.6))>= 1.92) && "letting Z"~N(0,1)\ &= P(Z >= 1.92)\ &= 1 - P(Z < 1.92)\ &= 1- Phi (1.92)\ & = 0.0274
$


== 4.4
Let RV X be the number of times where Liz rolls a 3,4,5 or 6. Since she either rolls a 1 or 2, or 3,4,5,6, it is a binomial distribution $X~"Bin"(90, 4/6)$

Since Liz either takes one step or two steps, we can represent the number of times she takes two steps as 
$160 - 90 =  70$. We therefore have to calculate $
P(X >= 70) = P((X - 90 *4/6 )/(sqrt(90*4/6*1/3))>= (70 - 90 *4/6 )/(sqrt(90*4/6*1/3)) ) = P((X- 60)/sqrt(20)>= sqrt(5) ) = 1 - Phi(sqrt(5))\ = 1 - 0.9875 = 0.0125
$
The probability of $X_90$ is at least 160 is 0.0125.
== 4.16
(a )Less than 65 of the numbers start with the digit 1, is the same as having less than 65 numbers smaller than 2.
We let rv X be how many numbers are smaller than 2, $X~"Bin"(500,(2-1.5)/(4.8-1.5))$ $
P(X < 65) = P((X - 500 * 0.1515)/ (sqrt(500*0.1515*0.8485)) < (65 - 75.7576)/(sqrt(64.2792))) = P((X -75.7576)/ sqrt(64.2792) < -1.34)\ approx Phi (-1.34) = 1-Phi (1.34) = 0.0901

$


== 4.20
Let X be the number of heads. 10000-X is the number of tails. $|X- (10000-X| = |2X-10000|$ is the difference between the number of heads and the number of tails.  Since we either have head or tail, X \~ Bin(10000,0.5) 
$
P(|2X-10000| <= 100) &= P(4950 <= X <= 5050) \ &= P(((4950-10000*0.5)/(sqrt(10000*0.5*0.5)) <= (X - 5000)/ (sqrt(10000*0.5*0.5)) <= (5050-5000)/(sqrt(10000*0.5*0.5)))\ 
&= P(-1 <= (X - 5000)/(sqrt(1000*0.5*0.5))<= 1)\
&approx Phi(1) - Phi(-1) = 0.6826
$


== 4.23
Let $N (1200,10000)$ represent lifetime of each car battery. Letting $Z~N(0,1)$ 
$
P(X <= 1100) = P(100Z + 200<= 1100) = P(Z <= -) = 1- Phi (1) approx 0.1587
$
For each car battery, the probability that it will last less than 1100 hours is 0.1587.

let Y be the number of car batteries in the batch of 100 with lifetime of less than 1100 hours.
For each battery, it's either less than 1100 hours or not, so it is a binomial distribution $Y~"Bin"(100,0.1587)$
$
P(Y >= 20) = P((Y - 100 * 0.1587)/(sqrt( 100 * 0.1587 * 0.8413)) >= (20 - 100 * 0.1587)/(sqrt( 100 * 0.1587 * 0.8413)))\ = P((Y - 15.87)/ (sqrt(15.87)) >= 1.13) = 1 - Phi(1.13) = 0.1292
$


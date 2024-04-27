#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
= HW 9, Harry Luo

// 8.6 (d), 8.12, 8.22, 8.23, 8.36, 8.40 (a), 8.42, 8.48, 8.54

// Hints: 

// For many of these problems the indicator method will help: write your random variable as a sum of (suitably chosen) indicators.
// 8.12 (a): Try to rewrite the integral as the integral of a PDF.
// 8.42: expand the fourth power of the sum and use independence and exchangeability to simplify the expression. You will have several types of terms, but many of them will have zero expectation.

= 8.6 (d)
$ E[(X+Y)^2] = E[X^2 + 2 X Y + Y ^2] &= E[X^2]+E[X Y] +E[Y^2] \ 
& = (2-p  )/(p^2) + (2 n r)/(p) + n(n-1) r^2 + n r  $ 


= 8.12
(a)
By definition, the MGF can be found by $ 
     M_Z (t) = E(e^(t Z) ) &= integral_(0)^(infinity) e^(t z) lambda^2 z e^(- lambda z)   dif z \ 
     & =  lambda^2 integral_(0)^(infinity) z e^((t - lambda) z)  dif z \
$ <eq.8.12>
- if $lambda - t >0$, noticing the following expectation of an exp r.v. with parameter $lambda - t $ : $ integral_(0)^(infinity) z(lambda -t)e^(-(lambda -t))z   dif z = 1/(lambda -t)  $ @eq.8.12 becomes: $ 
     M_Z (t) = lambda^2/(lambda - t)^2 $

- if $lambda - t <= 0$, the integral converges to infinity.
  $ 
      => M_Z = cases((lambda)/(lambda - t) quad t < lambda, infinity quad t >= lambda )
  $ <eq.1>

(b)
  for X and Y, example 5.6 on textbook suggests that $ 
      M_X (t) = M_Y (t) = cases(lambda/(lambda - t) quad t < lambda, infinity quad t >= lambda )
  $ 
  Given that X and Y are independent, $ 
      M_(X+Y) = M_X(t) M_Y(t) = cases(lambda^2/(lambda - t)^2 quad t < lambda, infinity quad t >= lambda ) 
  $ <eq.2>It is obvious that @eq.2 is the same as @eq.1, so the MGF of X+Y is the same as the MGF of Z. Thus X+Y has the same distribution as Z. 
   

= 8.22
Considering the indicator method: let $I_j = 1 "or" 0 , j in [1,89]$ be the indicator of "among the five numbers, both j and j+1 are chosen".\ Since every time $j "and" j+1$ are chosen, they are next to each other in the ordered sample, so 
$X = sum_(j=1)^(89) I_j $  
$ E[X] = E[sum_(j=1)^(89) I_j ] = sum_(j=1)^(89) E[I_j] $
recognizing that
$ 
    E[I_j] = P(j "and" j+1 "are chosen") = (binom(88,3))/(binom(90,5)) = 2/801 
$ 
$ E[X] = (89*2)/(801) = 20/89 $ 

= 8.23
(a) Denote the color of the ith pick as $C_i$, then $C_1, C_2, ..., C_(50)$ are exchangeable. Thus, $ 
    P(C_(28) eq.not C_(29)) = P(C_(28) = R, C_(29) = G) = 2P(C_1 = R, C_2 = G) = 2* (20*30)/(50*49) = 24/49
$ 
  
(b) Let $I_j$ be the indicator that $Y_j eq.not Y_(j+1), j= 1,2,...,49$ 

$X = I_1 + ... + I_(49)$, thus, $ 
    E[X] = E[I_1] + ... + E[I_49] = 49* P(C_1 eq.not C_2) =49 * 24/49 = 24 
$  
 


= 8.36

(a) let $I_j$ be the indicator that the number j appears at least once in the four rolls. Then $X = I_1 + ... + I_6$. By exchangeability,$ 
    E[X] = E[I_1] + ... + E[I_6] = 6 * E[I_1]
$ Since, $E[I_1] = P("1 appears in roll") = 1- P("no rolls with 1") = 1- (5/6)^4$, we have $ 
    E[X] = 6 * (1- (5/6)^4) =671/216
$ 

(b) noticing that $I_j^2 = 1$ since I is either 1 or zero, and using exchangeability, $ 
    E[X^2] = E[(I_1 + ... + I_6)^2] = E[I_1^2 + ... + I_6^2 + 2 I_1 I_2 + ... + 2 I_5 I_6] \ = sum_(j=1)^(6)E[I_j^2]+2 sum_(i<j<=6) E[I_i I_j]\      = 6 E[I_1^2] + 30 E[I_1 I_2] 
$ 

 TO find $E[I_1I_2]$, we use the  inclusion-disclusion principle, $ 
     E[I_1I_2] = P("1 and 2 both show up at least onece") \ 
     = 1- P("1 does not show up") - P("2 does not show up") + P("1 and 2 both do not show up") \
     = 1- ((5/6)^4 + (5/6)^4 - (4/6)^4) = 151/648
 $ 
  Thus, $ E[X^2] = 671/216 + 151/648 = 541/162 \
  "var"[X] = E[X^2] - E[X]^2 approx 0.447 $ 


= 8.40 (a)
Using indiator method, let $I_k$ is the indicator for the event thta hte number k is drawn at least once in the 4 weeks. Then $X = I_1 + ... + I_90$. By exchangeability, $ 
    E[X] = E[I_1] + ... + E[I_90] = 90 E[I_1] $

Considering that $ 
    E[I_1] = P("1 is drawn at least once in 4 weeks") = 1 - P("1 is not drawn in 4 weeks") = 1 - (85/90)^4
$ 
$ 
    => E[X] = 90 (1 - (85/90)^4)  approx 18.39
$ 


= 8.42
the fourth moment can be found as $ 
    E[overline(X_n^4) ] = E[((X_1 + X_2 +...+X_n)/(n)) ^4] = 1/n^3 E[(X_1 + ... X_n)^4]
$ 
According to binomial theorem, $ 
    E[overline(X_n^4)] &= 1/n^4 E[sum_k=1^n X_k^4 + 24 sum_(i<j< k < l) X_i X_j X_k X_l + 12 sum_(k<l, j eq.not k, j eq.not l) X_j^2 X_k^2 + 4 sum_(j eq.not k) X_j^3 X_k  ] \ 
    & =  1/n^3 E[X_1^4] + 24 binom(n,4) E[X_1X_2X_3X_4] + 12 binom(n,3) E[X_1^2 X_2 X_3] + 4 binom(n,2) E[X_1^3 X_2] + 6 binom(n,2) E[X_1^2 X_2^2]
$ 

by independence, we know $ 
    E[X_1X_2X_3X_4] = E[X_1] E[X_2] E[X_3] E[X_4] = (E[X_1])^4=0\
    E[X_1^2 X_2 X_3] = E[X_1^2] E[X_2] E[X_3]  = 0\
    E[X_1^3 X_2] = E[X_1^3] E[X_2] = 0\
    E[X_1^2 X_2^2] = E[X_1^2] E[X_2^2] = E[X_1^2]^2 
$ 
Therefore, $ E[overline(X_n^4)] = 1/n^3 E[X_1^4]+  (3n(n-1))/(n^4) E[X_1^2]^2 \ 
#rect(inset: 8pt)[
$ display(= (c)/(n^3)+ (3(n-1)a^2)/(n^3) )$
]


$
= 8.48
We can graph the joint pmf as follows:
#image("assets/2024-04-23-22-33-23.png")
From which we can find the marginals:
$ 
    p_X (1) = 9/100, p_X (2) = 90/100, p_X (3) = 1/100\
    p_Y (0) = 90/100, p_Y (1) = 9/100, p_Y (2) = 1/100 
$ 

The expectance can be naturally found as $
E[X] = 48/25, E[Y] = 11/100, E[X Y] = 6/25\
"Cov" (X,Y) = E[X Y] - E[X] E[Y]= 18/625
 $ 

= 8.54

(a) $ 
    "var" (X) = E[X^2] - E[X]^2 = 5- 2^2 =1\
    "var" (Y) = E[Y^2] - E[Y]^2 = 10-1 =9\
    "Cov" (X,Y) = E[X Y] - E[X] E[Y] = 1- 2 = -1\
    => "Corr" (X,Y) = "Cov" (X,Y)/ sqrt("var" (X) "var" (Y)) = -1/3 
$ 
(b)
Noticing $ 
    "Cov" (X, X+c Y) = "Var" (X) + c "Cov"(X,Y) = 1+c
$ so when c = -1, the covariance is 0, and the r.v. $X$ and $X +c Y$ are not correlated   

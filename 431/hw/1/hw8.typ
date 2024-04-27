#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
= HW 8, Harry Luo

//  6.28. 6.30, 7.2, 7.16, 7.20, 7.24, 7.28, 7.30

// Note that 6.30 has a typo: you should compute P(X-1=Y) (as opposed to P(X+1=Y)).

// For 7.2 you should provide the probability mass function of X+Y.

- 6.28
Let $p=1-q$. Need to find $P(V=k,W=l),k>=1, l=0,1,2$ 
Noticing the independence of X and Y, we have
$ 
    P(V=k, W=0) &= P(min(X,Y)= k, X<Y) \ 
    & =   P(X = k, k<Y) \ 
    & = P(X=k)P(k<Y) \ 
    & = p q^(k-1) q^(k)   = p q^(2k-1) 
$ 
 Similarly, $P(V = k, W = 2) = p q^(2k-1) $ 
 Thus, $ 
     P(V=k, W=1) & = P(min(X,Y)=k,X=Y) \ 
     & =  P(X=k, Y=k) = p^2q^(2k-2) 
 $ 
 Need to check if $P(V=k,W=1)$ is the product of the marginal probabilities.

 $V ~ "Geom"(1-q^2) => P(V=k) = (1-(1-q^2))^(k-1)(1-q^2) = q^(2k-2)(1-q^2)  $  

By argument of symmetry, $P(W=0) = P(X<Y) = P(Y<X) = P(W=2)$ 
Noticing again the independence of X and Y, we have
$ 
    P(W=1) = P(X=Y) &= sum_(k=1)^(infinity)P(X = k)P(Y=k)   \ 
    & = sum_(k=1)^(infinity)p q^(k-1)p q^(k-1) = (p^2)/(1-q^2)    
$ 
Using the fact that $P(W=0)+P(W=1)+P(W=2)=1$, we have $ 
    P(W=0) = P(W=2) = 1/2 (1-P(W=1)) = (1-p)/(2-p) 
$ 
 To check independence of V and W:
 $ 
     P(V=k,W=0) &= p q^(2k-1) \
     P(V=k)P(W=0) &= q^(2k-2)(1-q^2)(1-p)/(2-p) 
 $ 
 Noticing $(1-q^2)/(2-p)=((1-q)(1+q))/(1+q) = p => P(V=k,W=0) = P(V=k) P(W=0)$

 Similarly, $P(V=k,W=1) = P(V=k)P(W=1)$ and $P(V=k,W=2) = P(V=k)P(W=2)$ 

 Thus, we have shown that for all k>=1, l=0,1,2, $P(V=k,W=l) = P(V=k)P(W=l)$, which implies independence of V and W.

- 6.30
// Note that 6.30 has a typo: you should compute P(X-1=Y) (as opposed to P(X+1=Y)).
The joint pmf of X and Y, for $k >= 1, l>=0 $ is $ 
    P(X=k, Y= l) = (1-p)^(k-1)p times e^(-lambda)(lambda^l)slash (l!)   
$ 

Noticing that ${X=Y+1}$ can be expressed in $union_(k=0)^infinity{X=k+1, Y=k}$. It follows that $ 
    P(X = Y+1) &= sum_(k=0)^(infinity)P(X=k+1,Y=k) \ 
    & =   sum_(k=0)^(infinity) (1-p)^k p e^(-lambda)(lambda^k)slash (k!) \ 
    & = P e^(-lambda) sum_(k=0)^(infinity) (lambda(1-p))^k slash (k!) \ 
    & = p e ^(-lambda)e^(lambda(1-p))  
#rect(inset: 8pt)[
$ display(    & = p e^(-p lambda) )$
]

$ 
  
- 7.2
// For 7.2 you should provide the probability mass function of X+Y.
As suggested, we find the probability mass function of X+Y to represent its distribution.

Since $X, Y in {0,1} => X+Y = {0,1,2}$

When $X=0,Y=0, X+Y=0$. By independence, $ 
    P(X+Y=0) = P(X=0,Y=0) = P(X=0)P(Y=0) = (1-p)(1-r) 
$ 
WHen $X+Y = 2, X=1, Y=1$. Similarly, $ 
    P(X+Y=2) = P(X=1,Y=1) = P(X=1)P(Y=1) = p r
    $ 
Considering the complement of $P(X+Y) = 1$, $ 
    P(X+Y = 1) = 1-P(X+Y = 0)-P(X+Y = 2) = p+r-2 p r
$ 
Thus, the probability mass function of X+Y is $ 
    &P(X+Y = 0) = (1-p)(1-r) \ 
    &P(X+Y = 1) = p+r-2 p r \ 
    &P(X+Y = 2) = p r
    $

- 7.16
  $ 
    p_X (k) = (lambda^k)/(k!) e^(-lambda), k = 0,1,2,... \
    P_Y (0) = 1-p, p_Y (1)=p
  $ 
  By convolution, $ 
    p_(X+Y)(n) = sum_(k=0)^n p_X (k) p_Y (n-k) \ 
  $ <eq.conv1>
  Since $X+Y in {0,1,2,...}$, we need to consider only $n >= 0$ @eq.conv1 becomes
  $ 
    p_(X+Y) (n) = p_X (n) p_Y (0) + p_X (n-1) p_Y (1) 
  $ 
  - when $n=0, p_X (n-1) =0$, $ 
    p_(X+Y) (0) = p_X (0) p_Y (0) = e^(-lambda)(1-p)
  $
  - when $n>0$, $ 
    p_(X+Y)(n) &= p_X (n) p_Y (0) + p_X (n-1) p_Y (1) \ 
    & = (1-p)(lambda^n)/(n!) e^(-lambda) + p(lambda^(n-1))/(n-1)! e^(-lambda) \ 
    & = (lambda^(n-1)e^(-lambda) (lambda(1-p)+n p))/(n!) 
  $
To conclude, $ 
    &p_(X+Y) (n) = (lambda^(n-1)e^(-lambda) (lambda(1-p)+n p))/(n!), n = 0,1,2,... \ 
    &p_(X+Y) (n) = (1-p)e^(-lambda), n = 0 \
$

- 7.20
(a) By independence of X and Y, $
f_X (x) f_Y (y) = f_(X,Y) (x,y) \
f_X (x) = cases(2x quad x in (0,1),0 quad o.w.)\
f_Y (y) = cases(1 quad y in (1,2),0 quad o.w.)\
$ 
For $P(Y-X>= 3/2)$, we need to integrate the joint density function over the region $y-x >= 3/2$. Since pdf is only positive on $x in (0,1), y in (1,2)$ , we only need to consider the reagion of ${(x,y)| y-x >= 3/2} sect {(x,y)| x in (0,1) , y in (1,2)} = {(x,y)| x in (0,1/2, y in (x + 3/2, 2))}$  
Therefore, $ 
    P(Y-X >= 3/2) &= integral_(0)^(1/2)  integral_(x+3/2)^(2) 2x  dif y dif x \ 
    & = 1/24

$ 

(b)
since $X in (0,1), Y in (1,2) => X+Y in (1,3)$
$ 
    f_(X+Y) (z) = integral_(-infinity)^(infinity) f_X (x) f_Y (z-x)  dif x\
    = integral_(0)^(1) f_X (x) f_Y (z-x) dif x   
$ 
 Considering $f_X (x)f_Y (z-x) eq.not 0 "iff" z-x in (1,2)$

 WE want $x in (0,1) s.t. f_X (x) eq.not 0$ Therefore,   $f_X (x)f_Y (z-x)$ is non zero if and only if $max(0,z-2) < x < min(1,z-1)$
 $ 
     f_(X+Y) (z) = integral_(max(0,z-2))^(min(1,z-1)) 2x  dif x = min(1,z-1)^2 - max(0,z-2)^2
 $ 
   
$ 
    f_(X+Y) (z) = cases( (z-1)^2 quad z in (1,2), 1-(z-2)^2 quad z in (2,3), 0 quad o.w.) 
$ 



- 7.24
Denote $"Var"(X) = sigma_X^2, "Var"(Y) = sigma_Y^2, "Var"(Z) = sigma_Z^2$\
Notice: $ X + 2Y -3Z ~ N(0,sigma_X^2+4sigma_Y^2 + 9sigma_Z^2), \
(X+2Y-3Z)/(sqrt(sigma_X^2 +4sigma_Y^2 + 9sigma_Z^2) )~ N(0,1) $  

It follows that
$ 
    P(X+2Y-3Z <= 0) = P((X+2Y-3Z)/(sqrt(sigma_X^2 +4sigma_Y^2 + 9sigma_Z^2) ) <= 0) = 1- Phi(0)=1/2
$ 


- 7.28
Because of joint continous of $X_1, X_2,X_3$, prob. of any pairs of them being equal is 0. Therefore, $P(X_1 eq.not X_2 eq.not X_3) = 0 $

By exchangeability $ 
    P(X_1<X_2<X_3) = P(X_2 < X_1 < X_3) = P(X_3 < X_1 < X_2) = ...
$ 
There are 6 different permutations, each has same prob, and since they are mutually exclusive, $ 
    P(X_1 < X_2 < X_3) = 1/6
$



- 7.30
  (a) By exchangeability, $ 
      P("card 2" = A, "card 4" = K) = P("card 1" = A, "card 2" = K) = (4*4)/(52*51) = 4/663
  $ 
  (b) By exchangeability,
  $ 
      P("card 1" = S, "card 5" = S) = P("card 1" = S, "card 2" = S) = (binom(13,2))/(binom(52,2)) = 1/17
  $ 
  (c) By exchangeability,
  $ 
      P("card 2" =K| "last 2 cards are A") 
      &= (P("card 2" =K, "last 2 cards are A"))/(P("last 2 cards are A")) \ 
      & = P("card 3" = K, "card 1" = "card 2" =A)/(P("card 1" "card 2"= A)) \ 
      & = P("3rd card is K"|"first 2 cards are A") \ 
      & = 4/50
  $ 
  
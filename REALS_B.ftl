[set/-s] [element/-s] [number/-s]

Signature. A real number is a notion.

Definition RELSet.
REL is the set of real numbers.

Let x,y,z,v, a,b denote real numbers.

###Axiome fur field

Signature Add. x + y is real number.
Axiom. x+y = y+x.
Axiom. (x+y)+z = x+(y+z).
Signature. 0 is a real number such that for every real number x x + 0 = x.
Signature. -x is a real number such that -x + x = 0.

Let x - y stand for x + (-y).

Signature Add. x * y is real number.
Axiom. x*y = y*x.
Axiom. (x*y)*z = x*(y*z).
Signature. 1 is a real number such that for every real number x x*1 = x.
Signature. inv(x) is a real number.
Axiom. If (not x = 0) then inv(x)*x = 1.
Axiom. 1 is not equal to 0.

Axiom. x*(y+z)=(x*y)+(x*z).

###weitere bewissene Aussagen
Axiom P114c. If x+y = 0 then y = -x.
Axiom P114d. -(-x) = x.
#Axiom P115c. If (not x=0) and x*y = 1 then y = inv(x).  
#Axiom P115d. If not x=0 then inv(inv(x)) = x.
Axiom P116c. (-x)*y = -(x*y) = x*(-y).


###Axiome fur ordSet

Signature. x < y is an atom.
Let x > y stand for y < x.
Let x <= y stand for x<y or x=y.
Let x >= y stand for y <= x.

Axiom. Then x<y or y<x or x = y.
Axiom. Then not ((x<y and y<x) or (x<y and y=x) or (x=y and y<x)).
Axiom. If x<y and y<z then x<z.

###weitere 



###Axiome fur ordfield

Axiom A1. If y<z then x+y<x+z.
Axiom A2. If x>0 and y>0 then x*y>0.

Axiom P118a. If x>0 then -x<0.
Axiom P118a2. If x<0 then -x>0.

#Proposition P118b. If x>0 and y<z then x*y<x*z.

#Proposition P118c. If x<0 and y<z then x*y>x*z.


#Proposition P118d. If not x = 0 then x*x > 0.

#Lemma. 1>0. #Auto
#Proposition P118e1. If 0<y then 0 < inv(y).
#Proposition P118e2. If 0<x<y then 0 < inv(y)<inv(x).


#### Axiome Naturliche Zahlen
Signature. A natural number is a real number.

Definition NatSet.
NAT is the set of natural numbers.

Axiom. 1 is natural number.
Let n denote a natural number.
Axiom. n+1 is a natural number.
Axiom. 0 is not a natural number.
#### Axiome ganze Zahlen
Signature. A integer is a real number.

Definition ZSet.
ZS is the set of integer.
Let i,j denote integer.
Axiom. if (not i=j) then (i-j>=1) or (i-j<=1).

#### Axiome ratio Zahlen
Signature. A rational number is a real number.

Definition QSet.
QS is the set of rational numbers.

Axiom. Let m be an element of ZS and n be an element of NAT and (not n = 0). then m*inv(n) is a rational number.

Signature. A natural number is an integer.
Signature. An integer is a real number.


Axiom. If x-y = z then x =z+y. 
Axiom. If x>-y then y>-x. 

#Axiom. if z*x<y then x<y*inv(z).

Axiom P120a. If x>0 and y is element of REL then exists n  n*x>y.



Let q denote an element of QS.
Let m, m1, m2, mt denote integer.
Axiom VK1. for every x exists m m-1<=x<m.
Axiom VK2. if m-1<=x<m and m1<=x<m2 then m1<=m and m<=m2.
Axiom VK3. if m-1<=x<m and x<m2 then m<=m2.
Axiom VK7. if n*x<m then x<m*inv(n).
Axiom VK8. if m<n*y then m*inv(n)<y.
Proposition P120b. if x < y then exists q   x<q<y.
Proof.
	Assume x < y.
	Take z = y-x.Then z >0.
	Take n  such that n*z>1 (by P120a).
	Take v = n*x.Then 1 is a real number. then 1>0.
	Take m1 such that m1*1>v (by P120a).
	Take m2 such that m2*1>-v (by P120a).
	Then m2>-v.	
	Then v > -m2.
	Then -m2<n*x<m1.
	Take m such that m-1<=v<m.
	Then -m2<=v<m1.
	Take mt = -m2.
	Then m-1<=v<m and mt<=v<m1.
	Then mt<=m  . 
	Then m<=m1 .
	Then mt<=m<=m1. 
	Then n*x<m<=1+(n*x).
	Then n*z = n*(y-x)=(n*y)-(n*x).
	Then (n*y)-(n*x)>1.
	Then 1+(n*x)<n*y.
	Then n*x<m<n*y.
	Then n is natural number.
	Then n is not 0.
	Then x<m*inv(n)<y.
	
	
	
qed.












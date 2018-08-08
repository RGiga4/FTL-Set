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
Signature. Assume not x = 0. inv(x) is a real number such that inv(x)*x = 1.
Axiom. 1 is not equal to 0.

Axiom. x*(y+z)=(x*y)+(x*z).

###weitere bewissene Aussagen
Axiom P114c. If x+y = 0 then y = -x.
Axiom P114d. -(-x) = x.# Drastische beschleunigung.
Axiom P115c. If (not x=0) and x*y = 1 then y = inv(x).  
Axiom P115d. If not x=0 then inv(inv(x)) = x.
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

Axiom. 0 is natural number.
Let n denote a natural number.
Axiom. n+1 is a natural number.

#### Axiome ganze Zahlen
Signature. A integer is a real number.

Definition ZSet.
ZS is the set of integer.

#### Axiome ratio Zahlen
Signature. A rational number is a real number.

Definition QSet.
QS is the set of rational numbers.

Axiom. Let m be an element of ZS and n be an element of NAT and (not n = 0). then m*inv(n) is a rational number.

Signature. A natural number is an integer.

### Axiome OrdSet

Let R,S,T,A,B,C denote sets.

Definition DefSubset.   A subset of S is a set T
    such that every element of T is a element of S.

Definition DefEmpty.    S is empty iff S has no elements.


Definition upperBound.
	Assume A is a subset of REL.
	An upper bound of A is an element b of REL such that ( y<b or y = b ) for every element y of A.

Definition lowerBound.
	Assume A is a subset of REL.
	A lower bound of A is an element b of REL such that ( b<y or y = b ) for every element y of A.

Definition Supremum.
    Assume A is a subset of REL.
	Let s be an element of REL.
    s is supremum of A  iff s is an upper bound of A 
		and for every element x of REL if x<s then x is not an upper bound of A .

Definition Infimum.
	Assume A is a subset of REL.
	Let s be an element of REL.
    s is infimum of A  iff s is an lower bound of A 
		and for every element x of REL if s<x then x is not an lower bound of A .

Definition BoundedBelow.
	Assume A is a subset of REL.
	A is bounded below  iff 
		there exists an element b of REL such that b is a lower bound of A .

Definition BoundedAbove.
	Assume A is a subset of REL.
	A is bounded above  iff 
		there exists an element b of REL such that b is an upper bound of A .

Definition least_upper_bound_property.
	Assume R is a subset of REL.
	R is lub iff for every subset A of R
		if (A is bounded above ) then (there exists an element s of R such that s is supremum of A ).

Axiom. REL is lub.
AXiom. If x-y = z then x =z+y. 

[prove off]
Proposition P120a. If x>0 and y is element of REL then exists n  n*x>y.
Proof.
	#Assume x>0 and y is element of REL and not (exists n n*x>y).
(1)	Assume the contrary.	
	Let A be a subset of REL such that A = {n*x | n is natural number}.
	Then A is bounded above.
	Let al be an element of REL such that al is supremum of A.
	Then al-x<al.
	Then al-x is not an upper bound of A.
	Let beta be element of A such that al-x<beta.
	Let m be natural number such that beta = m*x.
	Then al-x<m*x. Then al <(m*x)+x.	
	Then al<(m+1)*x.
	Then m+1 is natural number.
	Then (m+1)*x is element of A.
	A Contradiction.
qed.
[prove on]
Let q denote an element of QS.
Let m, m1, m2, mt denote integer.
Axiom VK1. for every x exists m m-1<=x<m.
Axiom VK2. if m-1<=x<m and m1<=x<m2 then m1<=m<=m2.
Proposition P120b. if x < y then exists q   x<q<y.
Proof.
	Assume x < y.
	Let z = y-x.Then z >0.
	Then exists n n*z>1 (by P120a).
	Let v = n*x.Then 1 is a real number. then 1>0.
	Take m1 such that m1*1>v (by P120a).
	Take m2 such that m2*1>-v (by P120a).
	Then v+m2>0.
	Then 0 > -(v+m2) (by P118a).
	Then 0 > -v -m2.
	Then v > -m2.
	Then -m2<n*x<m1.
	Take m such that m-1<=v<m.
	Then -m2<=v.
	Then v<m1.
	Then -m2<=v<m1.
	Let mt = -m2.
	Then m-1<=v<m and mt<=v<m1.
	Then mt<=m<=m1 (by VK2). # Warum funct das nicht?
#	Then n*x<m<=1+n*x.
	
	
	
qed.












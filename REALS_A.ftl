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


Axiom. x*(y+z)=(x*y)+(x*z).

###weitere bewissene Aussagen
Axiom P114c. If x+y = 0 then y = -x.
Axiom P114d. -(-x) = x.# Drastische beschleunigung.

Axiom P116c. (-x)*y = -(x*y) = x*(-y).


###Axiome fur ordSet

Signature. x < y is an atom.
Let x > y stand for y < x.


Axiom. Then x<y or y<x or x = y.
Axiom. Then not ((x<y and y<x) or (x<y and y=x) or (x=y and y<x)).
Axiom. If x<y and y<z then x<z.

###weitere 



###Axiome fur ordfield

Axiom A1. If y<z then x+y<x+z.
Axiom A2. If x>0 and y>0 then x*y>0.

Axiom P118a. If x>0 then -x<0.
Axiom P118a2. If x<0 then -x>0.

Axiom. 1 > 0.

#### Axiome Naturliche Zahlen
Signature. A natural number is a real number.

Definition NatSet.
NAT is the set of natural numbers.

Axiom. 0 is natural number.
Let n denote a natural number.
Axiom. n+1 is a natural number.
Axiom. n > 0 or n = 0.


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
    Assume A is a subset of REL and not empty.
	Let s be an element of REL.
    s is supremum of A  iff s is an upper bound of A 
		and for every element x of REL if x<s then x is not an upper bound of A .

Definition Infimum.
	Assume A is a subset of REL and not empty.
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
		if (A is bounded above and not empty) then (there exists an element s of R such that s is supremum of A ).

Definition greatest_lower_bound_property.
	Assume R is a subset of REL.
	R is glb iff for every subset A of R
		if (A is bounded below and not empty) then (there exists an element s of R such that s is infimum of A ).

Axiom. REL is lub.
Axiom. REL is glb.

AXiom. If x-y = z then x =z+y. 

[prove off]
Proposition P120a. If x>0 and y is element of REL then exists n  n*x>y.
Proof.
	Assume x>0 and y is element of REL.
(1)	Assume the contrary.	
	Define J = {g*x | g is natural number}.
	Then J is bounded above.
	Take an element alpha of REL such that alpha is supremum of J.
	Then alpha-x is not an upper bound of J.
	Take element beta of J such that alpha-x<beta.
	Take natural number m such that beta = m*x.
	Then alpha-x<m*x. Then alpha <(m*x)+x.	
	Then alpha<(m+1)*x.
	Then (m+1)*x is element of J.
	A Contradiction.
qed.
[prove on]
#### Axiome ganze Zahlen

Signature. A integer is a real number.
Signature. A natural number is an integer.

Definition ZSet.
ZS is the set of integer.
Axiom. 0,1 is an integer.

Let i,j denote integer.
Axiom. i+j, -i are integer.

Let x <= y stand for x<y or x=y.
Let x >= y stand for y <= x.

Proposition Lis1. for every x exists j j-1<=x<j.
Proof.
	Let x be a real number.
	Define J = {g | g is integer and x<g}.
	Then J is a subset of ZS and bounded below.
	Then J is a subset of REL.
	1 > 0 and x is element of REL.
	Take a natural number n such that n*1> x.
	n is a real number. Thus n is an element of J. Then J is not empty.
	Take an element alpha of REL such that alpha is infimum of J.
	Take an element beta of REL such that beta = alpha + 1 .
	beta is not a lower bound of J.
	Take an element i of J such that i < beta. Then  alpha <= i and i-1 < beta - 1 = alpha. Thus i-1 <= x < i.
	
qed.














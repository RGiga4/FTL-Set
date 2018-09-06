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



#### Axiome Naturliche Zahlen
Signature. A natural number is a real number.

Definition NatSet.
NAT is the set of natural numbers.

Axiom. 0 is natural number.
Let n denote a natural number.
Axiom. n+1 is a natural number.



### Axiome OrdSet

Let R,S,T,A,B,C denote sets.

Definition DefSubset.   A subset of S is a set T
    such that every element of T is a element of S.

Definition DefEmpty.    S is empty iff S has no elements.


Definition upperBound.
	Assume A is a subset of REL.
	An upper bound of A is an element b of REL such that ( y<b or y = b ) for every element y of A.

Definition Supremum.
    Assume A is a subset of REL and not empty.
	Let s be an element of REL.
    s is supremum of A  iff s is an upper bound of A 
		and for every element x of REL if x<s then x is not an upper bound of A .

Definition BoundedAbove.
	Assume A is a subset of REL.
	A is bounded above  iff 
		there exists an element b of REL such that b is an upper bound of A .

Definition least_upper_bound_property.
	Assume R is a subset of REL.
	R is lub iff for every subset A of R
		if (A is bounded above and not empty) then (there exists an element s of R such that s is supremum of A ).

Axiom. REL is lub.
AXiom. If x-y = z then x =z+y. 


Proposition P120a. If x>0 and y is element of REL then exists n  n*x>y.
Proof.
	Assume x>0 and y is element of REL.
(1)	Assume the contrary.	
	Define J = {g*x | g is natural number}.
	Then J is bounded above.
	Take an element al of REL such that al is supremum of J.
	Then al-x is not an upper bound of J.
	Take element beta of J such that al-x<beta.
	Take natural number m such that beta = m*x.
	Then al-x<m*x. Then al <(m*x)+x.	
	Then al<(m+1)*x.
	Then (m+1)*x is element of J.
	A Contradiction.
qed.













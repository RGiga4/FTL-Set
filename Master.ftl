[set/-s] [element/-s] [belong/-s] [subset/-s] [relation/-s] [number/-s]

Signature. A real number is a notion.
Definition. REL is the set of real numbers. 
Axiom. every real numbers is element of REL.







Let S,T,A,B,C denote sets.

Definition DefSubset.   A subset of S is a set T
    such that every element of T is a element of S.

Definition DefEmpty.    S is empty iff S has no elements.

Signature. A relation is a notion.

Signature. An order is a relation.

Signature.Let < be a relation.

Signature. Let x,y be elements of REL. x<y is an atom.

Let x,y,z denote real numbers.

Axiom. x<y or y<x or x = y.

Axiom. Then not ((x<y and y<x) or (x<y and y=x) or (x=y and y<x)).
Axiom. If x<y and y<z then x<z.



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

Proposition.
	
	Assume REL is lub.
	Assume B is a subset of REL and not empty and bounded below.
	Let L = {a in REL | a is lower bound of B}.
	Then there exists an element a of REL such that a is supremum of L and a is infimum of B .
Proof.
	L is not empty.
	Every element x of B is an upper bound of L.
	Then L is bounded above.
	Take an element a of REL such that a is supremum of L.
	a is an element of L.
qed.

















Signature. A field is a notion.

Let x,y,z denote real numbers.

Signature Add. x + y is real number.
Axiom A1. Let x, y be real numbers. Then x + y is a real number.
Axiom A2. x + y = y + x.
Axiom A3. (x + y) + z = x + (y + z). 
Signature A4. 0 is element of REL such that for every real number x x + 0 = x.
Signature A5. -x is element of REL such that x+(-x) = 0.

Signature M1. x * y is a real number.
Axiom M2. x * y = y * x.
Axiom M3. (x * y) * z = x * (y * z).
Signature M4. 1 is element of REL such that for every real number x x * 1 = x.
Axiom M42. 0 is not equal to 1.
Signature M5. Assume not x = 0. inv(x) is a real number such that inv(x)*x = 1.

Axiom D. x*(y + z) = (x*y) + (x*z).

#Look up
#A2 Komm x+y = y+x
#A3 Assoz
#A4 x+0 = x
#A5 x+-x = 0

#M2 Komm x*y = y*x
#M3 Assoz
#M4 x*1 = x
#M42 0 != 1
#M5 inv(x)*x = 1

Proposition P114a.
	If x + y = x + z then y = z.
Proof.
	
	Assume x + y = x + z.
	y  = 0 + y
		= ((-x)+x) + y
		= -x + (x+y)
		= -x + (x+z)
		= ((-x)+x) + z
		= 0 + z
		= z.
qed.

Proposition P114b.
	If x + y = x then y = 0.
Proposition P114c. #Auto
	If x + y = 0 then y = -x.
Proof.
	Assume x + y = 0.
	Take z = -x. Then x + z = 0.
	Then x + z = x + y. Then y = -x (by P114a).
qed.
Proposition P114d. #Auto
	Let x be elements of REL. -(-x) = x.
Proof.
	Then (-x)+x = 0.
	Then -(-x) = x (by P114c).
qed.


Proposition P115a.
	Let x,y,z be elements of REL. If x is not equal to 0 and x*y = x*z then y = z.
Proposition.
	Let x,y be elements of REL. If x is not equal to 0 and x*y = x then y = 1.
Proposition.
	Let x,y be elements of REL. If x is not equal to 0 and x*y = 1 then y = inv(x).
Proposition.
	Let x be elements of REL. If x is not equal to 0 then inv(inv(x)) = x.
#Rudin. The Proof is simialre to that of P114 that we omit it. 


Proposition P116a. #Auto
	Let x be elements of REL. 0*x = 0.
Proof.
	Then (0*x) + (0*x)
		= (0+0)*x
		= 0*x.
	Then 0*x = 0 (by P114b).
qed.
Proposition P116b. #Auto
	If x is not equal to 0 and y is not equal to 0 then x*y is not equal to 0.
Proof.
	
	Let x is not equal to 0 and y is not equal to 0.
	Assume the contrary.

	Then 1 = (inv(x)*inv(y))*(x*y)
				= (inv(x)*inv(y))*0
				= 0 .
	Contradiction.
qed.

Lemma L1.
	(-x)*y = -(x*y).
Proof.
	
((-x)*y) + (x*y) .= (y*(-x)) + (y*x) (by M2)
		.= y*(-x+x) (by D) 
		.= (-x+x)*y (by M2)
		.= 0*y (by A2, A5)
		.= 0 (by P116a, M2).
	
qed. 
Proposition P116c.
	(-x)*y = -(x*y) = x*(-y).
Proof.
	Then(-x)*y = -(x*y) (by L1).
	
	Then -(x*y) = -(y*x) = (-y)*x = x*(-y).
	
qed. 

Proposition P116d.
	(-x)*(-y)= x*y.


Let x - y stand for x + (-y).

Signature. x < y is an atom.
Let x > y stand for y < x.
Let x <= y stand for x<y or x=y.
Let x >= y stand for y <= x.

Axiom. Then x<y or y<x or x = y.
Axiom. Then not ((x<y and y<x) or (x<y and y=x) or (x=y and y<x)).
Axiom. If x<y and y<z then x<z.










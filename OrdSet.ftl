[set/-s] [element/-s] [belong/-s] [subset/-s] [relation/-s]


Let S,T,A,B,C denote sets.

Definition DefSubset.   A subset of S is a set T
    such that every element of T is a element of S.

Definition DefEmpty.    S is empty iff S has no elements.

Signature. A relation is a notion.

Signature. An order is a relation.

Signature.Let R be a relation. Dm(R) is a set.

Signature. Let R be a relation. Let x,y be elements of Dm(R). R(x, y) is an atom.

Axiom.
	Let R be a order.
	Let x,y be elements of Dm(R).
	Then R(x,y) or R(y,x) or x = y.

Axiom.
	Let R be an order.
	Let x,y be elements of Dm(R).
	Then not (R(x,y) and R(y,x)) and not (R(x,y) and x=y).

Axiom.
	Let R be a order.
	Let x,y,z be elements of Dm(R).
	Assume R(x,y) and R(y,z). 
	Then R(x,z).

Definition upperBound.
	Let R be a order.
	Assume A is a subset of Dm(R).
	An upper bound of A wrt R is an element b of Dm(R) such that ( R(y,b) or y = b ) for every element y of A.


Definition lowerBound.
	Let R be a order.
	Assume A is a subset of Dm(R).
	A lower bound of A wrt R is an element b of Dm(R) such that ( R(b,y) or y = b ) for every element y of A.

Definition Supremum.
	Let R be an order.
    Assume A is a subset of Dm(R) and not empty.
	Let s be an element of Dm(R).
    s is supremum of A wrt R iff s is an upper bound of A wrt R
		and for every element x of Dm(R) if R(x,s) then x is not an upper bound of A wrt R.

Definition Infimum.
	Let R be an order.
	Assume A is a subset of Dm(R) and not empty.
	Let s be an element of Dm(R).
    s is infimum of A wrt R iff s is an lower bound of A wrt R
		and for every element x of Dm(R) if R(s,x) then x is not an lower bound of A wrt R.

Definition BoundedBelow.
	Let R be an order.
	Assume A is a subset of Dm(R).
	A is bounded below wrt R iff 
		there exists an element b of Dm(R) such that b is a lower bound of A wrt R.

Definition BoundedAbove.
	Let R be an order.
	Assume A is a subset of Dm(R).
	A is bounded above wrt R iff 
		there exists an element b of Dm(R) such that b is an upper bound of A wrt R.

Definition least_upper_bound_property.
	Let R be an order.
	R is lub iff for every subset A of Dm(R)
		if (A is bounded above wrt R and not empty) then (there exists an element s of Dm(R) such that s is supremum of A wrt R).

Proposition.
	Let R be an order.
	Assume R is lub.
	Assume B is a subset of Dm(R) and not empty and bounded below wrt R.
	Let L = {a in Dm(R) | a is lower bound of B wrt R}.
	Then there exists an element a of Dm(R) such that a is supremum of L wrt R and a is infimum of B wrt R.
Proof.
	L is not empty.
	Every element x of B is an upper bound of L wrt R.
	Then L is bounded above wrt R.
	Take an element a of Dm(R) such that a is supremum of L wrt R.
	a is an element of L.
qed.



























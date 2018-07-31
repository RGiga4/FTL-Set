
[set/-s] [element/-s] [number/-s]

### set theory

Let M,N denote sets.

Definition. Prod(M, N) = { (x,y) | x is an element of M and y is an element of N }.

Definition. Let f be a function. f is from M to N iff Dom(f) = M and for every element x of Dom(f) f[x] is an element of N.  



Signature. A field is a notion.
Signature. An addmult structure is notion.


Let AM denote an addmult structure.
Signature. car(AM) is a set.
Signature. add(AM) is a function from Prod(car(AM), car(AM)) to car(AM).
Signature. mul(AM) is a function from Prod(car(AM), car(AM)) to car(AM).
Signature. neq(AM) is a function from car(AM) to car(AM).
Signature. inv(AM) is a function from car(AM) to car(AM).


Signature. zero(AM) is a element of car(AM).
Signature. one(AM) is a element of car(AM).
Axiom A1. Let x, y are elements of car(AM). Then add(AM)[(x,y)] is element of car(AM).
Axiom A2. Let x, y are elements of car(AM). Then add(AM)[(x,y)] = add(AM)[(y,x)].
Axiom A3. Let x, y, z are elements of car(AM). Then add(AM)[(add(AM)[(x,y)],z)] = add(AM)[(x,add(AM)[(y,z)])].
Axiom A4. Let x is element of car(AM). Then add(AM)[(x,zero(AM))] = x.
Axiom A5. Let x is element of car(AM). Then add(AM)[(x,neq(AM)[x])] = zero(AM).
#Signature Neg. Let x is element of car(AM). -x is element of car(AM) such that add(AM)[(x,-x)] = zero(AM).

Axiom M1. Let x, y are elements of car(AM). Then mul(AM)[(x,y)] is element of car(AM).
Axiom M2. Let x, y are elements of car(AM). Then mul(AM)[(x,y)] = mul(AM)[(y,x)].
Axiom M3. Let x, y, z are elements of car(AM). Then mul(AM)[(mul(AM)[(x,y)],z)] = mul(AM)[(x,mul(AM)[(y,z)])].
Axiom M41. one(AM) is not equal to zero(AM).
Axiom M42. Let x is element of car(AM). Then mul(AM)[(x,one(AM))] = x.
Axiom A5. Let x is element of car(AM). If x is not equal to zero(AM) then mul(AM)[(x,inv(AM)[x])] = one(AM).

Axiom D. Let x,y,z be elements of car(AM). Then mul(AM)[(x,  add(AM)[(y,z)])] = add(AM)[(mul(AM)[(x,y)],mul(AM)[(x,z)])].

Proposition P114a. #Auto
	Let x,y,z be elements of car(AM). If add(AM)[(x,y)] = add(AM)[(x,z)] then y = z.
Proof.
	Let x,y,z be elements of car(AM). Assume add(AM)[(x,y)] = add(AM)[(x,z)].
	Then y  = add(AM)[(zero(AM), y)] 
			= add(AM)[(add(AM)[(neq(AM)[x], x)],y)]
			= add(AM)[(neq(AM)[x], add(AM)[(x,y)])]
			= add(AM)[(neq(AM)[x], add(AM)[(x,z)])]
			= add(AM)[(add(AM)[(neq(AM)[x], x)],z)]
			= add(AM)[(zero(AM), z)]
			= z.
qed.
Proposition P114b.
	Let x,y be elements of car(AM). If add(AM)[(x,y)] = x then y = zero(AM).
Proposition P114c. #Auto
	Let x,y be elements of car(AM). If add(AM)[(x,y)] = zero(AM) then y = neq(AM)[x].
Proof.
	Let x,y be elements of car(AM). Assume add(AM)[(x,y)] = zero(AM).
	Let z be neq(AM)[x]. Then add(AM)[(x,z)] = zero(AM).
	Then add(AM)[(x,z)] = add(AM)[(x,y)]. Then y = neq(AM)[x] (by P114a).
qed.
Proposition P114d. #Auto
	Let x be elements of car(AM). neq(AM)[neq(AM)[x]] = x.
Proof.
	Let x be element of car(AM).Then add(AM)[(neq(AM)[x], x)] = zero(AM).
	Then neq(AM)[neq(AM)[x]] = x (by P114c).
qed.


Proposition P115a.
	Let x,y,z be elements of car(AM). If x is not equal to zero(AM) and mul(AM)[(x,y)] = mul(AM)[(x,z)] then y = z.
Proposition.
	Let x,y be elements of car(AM). If x is not equal to zero(AM) and mul(AM)[(x,y)] = x then y = one(AM).
Proposition.
	Let x,y be elements of car(AM). If x is not equal to zero(AM) and mul(AM)[(x,y)] = one(AM) then y = inv(AM)[x].
Proposition.
	Let x be elements of car(AM). If x is not equal to zero(AM) then inv(AM)[inv(AM)[x]] = x.
#Rudin. The Proof is simialre to that of P114 that we omit it. 


Proposition P116a. #Auto
	Let x be elements of car(AM). mul(AM)[(zero(AM), x)] = zero(AM).
Proof.
	Let x be element of car(AM).
	Then add(AM)[(mul(AM)[(zero(AM), x)], mul(AM)[(zero(AM), x)])]
		= mul(AM)[(add(AM)[(zero(AM),zero(AM))], x)]
		= mul(AM)[(zero(AM), x)].
	Then mul(AM)[(zero(AM), x)] = zero(AM) (by P114b).
qed.
Proposition P116b. #Auto
	Let x,y be elements of car(AM). If x is not equal to zero(AM) and y is not equal to zero(AM) then mul(AM)[(x,y)] is not equal to zero(AM).
Proof.
	Let x,y be elements of car(AM). Assume x is not equal to zero(AM) and y is not equal to zero(AM).
	Assume the contrary.

	Then one(AM) = mul(AM)[(mul(AM)[(inv(AM)[x],inv(AM)[y])],mul(AM)[(x,y)])]
				= mul(AM)[(mul(AM)[(inv(AM)[x],inv(AM)[y])],zero(AM))]
				= zero(AM).
	Contradiction.
qed.
Lemma. #(-x)y + xy = (-x + x)y = 0  #Extra
	Let x,y be elements of car(AM). add(AM)[(mul(AM)[(neq(AM)[x], y)],mul(AM)[(x,y)])] = mul(AM)[(add(AM)[(neq(AM)[x], x)],y)] = zero(AM).
 
Proposition P116c. #Extra
	Let x,y be elements of car(AM). mul(AM)[(neq(AM)[x], y)] = neq(AM)[mul(AM)[(x,y)]] = mul(AM)[(x, neq(AM)[y])].
Proof. 
	Let x,y,a,b be elements of car(AM).
	# (-x)y + xy = (-x+x)y = 0y = 0
	Assume add(AM)[(mul(AM)[(neq(AM)[x], y)],mul(AM)[(x,y)])] = zero(AM).
	Assume a = mul(AM)[(neq(AM)[x], y)] and b = mul(AM)[(x,y)].
	Then add(AM)[(a,b)] = zero(AM).
	Then a = neq(AM)[b].
	Then mul(AM)[(neq(AM)[x], y)] = neq(AM)[mul(AM)[(x,y)]].
qed.
Proposition P116d.
	Let x,y be elements of car(AM). mul(AM)[(neq(AM)[x], neq(AM)[y])] = mul(AM)[(x,y)].



#Signature. An ordered field is a notion.

#Axiom O1. Let F be an ordered field. Then F is addmult structure.
#Let F denote an ordered field. 
#Axiom O2. Let x, y, z be elements of car(F). Then x is element of car(F).


#Proposition.
#	Contradiction.

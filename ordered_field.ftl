[set/-s] [element/-s] [number/-s]

Signature. An field elements is a notion.

#Let F denote an ordered field.
Let x,y,z,v, a,b denote field elements.

###Axiome fur field

Signature Add. x + y is field element.
Axiom. x+y = y+x.
Axiom. (x+y)+z = x+(y+z).
Signature. 0 is a field element such that for every field element x x + 0 = x.
Signature. -x is a field element such that -x + x = 0.

Let x - y stand for x + (-y).

Signature Add. x * y is field element.
Axiom. x*y = y*x.
Axiom. (x*y)*z = x*(y*z).
Signature. 1 is a field element such that for every field element x x*1 = x.
Signature. Assume not x = 0. inv(x) is a field element such that inv(x)*x = 1.
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

Proposition P118a. If x>0 then -x<0. #Auto
Proof.
	Assume x>0. Then 0= -x + x > -x + 0.
	Then -x<0.
qed.
Proposition P118a2. If x<0 then -x>0. #Auto
Proof.
	Assume x<0. Then 0= -x + x < -x + 0.
	Then -x>0.
qed.
Proposition P118b. If x>0 and y<z then x*y<x*z.
Proof.
	Assume x>0 and y<z. Then z-y > y-y = 0.
	Then x*(z-y)>0.
	Then x*z = (x*(z-y))+(x*y).# war Hard

	Take a = x*(z-y) and b = x*y.
	Then a>0.
	Then x*z = a + b > 0+b = (x*y).
	
	Then x*z > x*y.
qed.
Proposition P118c. If x<0 and y<z then x*y>x*z.
Proof.
	Assume x<0 and y<z.
	Then -x>0 (by P118a2).
	Then z-y>0. # Kein Hinweis geben
	Then -(x*(z-y)) = (-x)*(z-y) (by P116c).
	Then (-x)*(z-y) > 0.
	Then x*(z-y) < 0.
	Then (x*z) - (x*y) < 0.
	
	Take a = (x*z) and b = - (x*y).
	Then a+b<0.
	Then a < -b.
	
	Then x*z < x*y.
qed.

Proposition P118d. If not x = 0 then x*x > 0.
Proof.
	Case x>0. Then x*x > 0.
	end.
	Case x<0. Then -x>0. Then x*x = (-x)*(-x)>0.
	end.

qed.
Lemma. 1>0. #Auto
Proof.
	Then 1 = 1*1 > 0 .#keine Hinweise
qed.

Proposition P118e1. If 0<y then 0 < inv(y).#Auto
Proof.
(1) Assume the contrary.
	Then y*inv(y) <= 0.
	Then y*inv(y) = 1 > 0.
	Contradiction.

qed.
Proposition P118e2. If 0<x<y then 0 < inv(y)<inv(x).
Proof. 
	Assume 0<x<y.Then 0<inv(y) and 0<inv(x).# Ab hier Auto
	Then inv(x)*inv(y)>0.
	Take a = inv(y)*inv(x).	
	Then x<y. Then x*a<y*a.
	Then x*(inv(x)*inv(y))< y*(inv(x)*inv(y)).
	Then (x*inv(x))*inv(y)< (y*inv(y))*inv(x).#leicht Extra
	Then inv(y) < inv(x).
	
qed.











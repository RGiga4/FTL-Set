[set/-s] [element/-s] [number/-s]

Signature. A real number is a notion.

#Let F denote an ordered field.
Let x,y,z,a,b,c,d,e,f,g,h,j,k,r,s denote real numbers.

###Axiome fur field

Signature Add. x + y is a real number.
Axiom RComm. x+y = y+x.
Axiom. (x+y)+z = x+(y+z).
Signature Zero. 0 is a real number such that for every real number x x + 0 = x.
Signature. -x is a real number such that -x + x = 0.

Let x - y stand for x + (-y).

Signature Mult. x * y is real number.
Axiom. x*y = y*x.
Axiom. (x*y)*z = x*(y*z).
Signature One. 1 is a real number such that for every real number x x*1 = x.
Signature. Assume not x = 0. inv(x) is a real number such that inv(x)*x = 1 .
Axiom. 1 is not equal to 0.

Axiom Dis1. x*(y+z)=(x*y)+(x*z).
Axiom Dis2. (y+z)*x=(y*x)+(z*x).

###weitere bewissene Aussagen
Axiom P114c. If x+y = 0 then y = -x.
Axiom P114d. -(-x) = x.# Drastische beschleunigung.
Axiom P115c. If (not x=0) and x*y = 1 then y = inv(x).  
Axiom P115d. If not x=0 then inv(inv(x)) = x.
Axiom P116c. (-x)*y = -(x*y) = x*(-y).

Axiom. -(x+y) = -x + -y. #Nicht Bewiesen
Axiom. x*0 = 0. #name finden
[prove off]

Proposition. (c + d) + (e  + f) = (c + e) + (f   + d).
Proof. (c + d) + (e  + f)	= ((c +  d) +  e)  + f 
       	 	   				= ( c + (d  +  e)) + f 
       	    				= ( c + (e  +  d)) + f 
      						= ((c +  e) +  d)  + f 
      						=  (c +  e) + (f   + d).
qed.

Proposition. (x*x) - (y*y) = (x+y)*(x-y).
Proof. (x+y)*(x-y) 	= (x+y)*(x+ -y) = (((x+y)*x)+ ((x+y)*(-y))) = ( ((x*x) + (y*x)) + ((x*(-y)) + (y*(-y))) )
					= ( ((x*x) + (y*x)) + ((x*(-y)) + -(y*y)) )
					= ( (x*x) + ((y*x) + ((x*(-y)) + -(y*y))) )
					= ( (x*x) + (((y*x) + (x*(-y))) + -(y*y) ) )
					= ( (x*x) + (((y*x) + -(x*y)) + -(y*y) ) )
					= ( (x*x) + (((y*x) + -(y*x)) + -(y*y) ) )
					= ( (x*x) + (0 + -(y*y) ) )
					= (x*x) - (y*y).
qed.


### mehr axiome




Signature. A complex number is a notion.
Let u,v,w, u2 denote complex numbers.
Signature. Let x,y be real numbers. (x,y) is a complex number.
Signature. u ++ v is a complex number.
Signature. u ** v is a complex number.
Axiom. If u is a complex number then there exist real numbers x,y such that u = (x,y).
Axiom CAdd. (x, y) ++ (a, b) = (x + a, y + b) .
Axiom CMult. (x, y) ** (a, b) = ((x*a) - (y*b), (x*b) + (y*a)).




Proposition CmpFld2.  u ++ v = v ++ u.
Proof. Let x,y,a,b be real numbers such that (u = (x,y) and v = (a,b)).
Then u ++ v = (x,y) ++ (a,b).
Then (x,y) ++ (a,b) = (x + a, y + b) (by CAdd).	#Hier ein Problem was?
	    (x + a, y + b) = (a + x, b + y). 
	    (a + x, b + y) = (a,b) ++ (x,y) (by CAdd).
	    (a,b) ++ (x,y) = v ++ u. 
Then u ++ v = v ++ u.
qed. 



Proposition CmpFld3. (u ++ v) ++ w = u ++ (v ++ w).
Proof. Let x,y,a,b,r,s be real numbers such that (u = (x,y) and v = (a,b) and w = (r,s)).
Then (u ++ v) ++ w = ((x+a)+r, (y+b)+s) (by CAdd). 
((x+a)+r, (y+b)+s)= (x+(a+r), y+(b+s)).
(x+(a+r), y+(b+s)) = u ++ (v ++ w) (by CAdd).
Then (u++v)++w=u++(v++w). 
qed.

Proposition CmpFld4. u ++ (0,0) = u.
Proof. 
	Let x,y be real numbers such that u = (x,y). Then u ++ (0,0) = (x+0,y+0) (by CAdd). (x+0,y+0) = (x,y) = u. 
qed.

[prove on]
[prove off]
Proposition CmpFld5. For every complex number u there exists a complex number v such that u ++ v = (0,0).
Proof. 
	Assume x,y be real numbers such that u = (x,y). Let v = (-x, -y). Then  u ++ v = (x-x, y-y)(by CAdd) . (x-x, y-y) = (0,0). 
	Then v is a complex number such that u++v = (0,0).
	v is a complex number.
	For every complex number u2 there exists a complex number w such that u2 ++ w = (0,0).
qed.

Proposition CmpFld6. u**v = v**u.
Proof. Let x,y,a,b be real numbers such that (u = (x,y) and v = (a,b)).
Then u**v =  ((x*a) - (y*b), (x*b) + (y*a)) =  ((a*x) - (b*y), (a*y) + (b*x)) = v**u. Then u**v = v**u. qed.

Proposition CmpFld7. (u**v)**w = u**(v**w).
Proof. Let x,y,a,b,r,s be real numbers such that (u = (x,y) and v = (a,b) and w = (r,s)). 
(u**v)**w = (((x*a) - (y*b), (x*b) + (y*a))) ** w 
		  = (  ( ((x*a)  - (y*b))*r ) - ( ((x*b) + (y*a))*s )  ,  ( ((x*a)  - (y*b))*s ) + ( ((x*b) + (y*a))*r ) )
	  	  = (  ( ((x*a) + -(y*b))*r ) - ( ((x*b) + (y*a))*s )  ,  ( ((x*a) + -(y*b))*s ) + ( ((x*b) + (y*a))*r ) )
		  = (  ( ((x*a) + -(y*b))*r ) - ( ((x*b)*s) + ((y*a)*s) )  ,  ( ((x*a) + -(y*b))*s ) + ( ((x*b)*r) + ((y*a)*r) )  )
		  = (  ( ((x*a)*r) + ((-(y*b))*r) ) - ( ((x*b)*s) + ((y*a)*s) )  ,  ( ((x*a)*s) + ((-(y*b))*s) ) + ( ((x*b)*r) + ((y*a)*r) )  ) 
		  = (  ( ((x*a)*r) + -((y*b)*r) ) - ( ((x*b)*s) + ((y*a)*s) )  ,  ( ((x*a)*s) - ((y*b)*s) ) + ( ((x*b)*r) + ((y*a)*r) )  )
		  = (  ( ((x*a)*r) + -((y*b)*r) ) + ( -((x*b)*s) + -((y*a)*s) )  ,  ( ((x*a)*s) + -((y*b)*s) ) + ( ((x*b)*r) + ((y*a)*r) )  ).
Let c = (x*a)*r and d = -((y*b)*r) and e = -((x*b)*s) and f = -((y*a)*s) and g = ((x*a)*s) and  h = -((y*b)*s) and  j = ((x*b)*r) and k = ((y*a)*r).
Then (u**v)**w =  ( (c + d) + (e  + f) , (g + h) +  (j + k)  )
      		   =  ( (c + e) + (d + f) , (g +  j) + (h  + k) )
      		   = ( (c + e) + (f + d) , (g + j) + (k + h) ).
Then v ** w = ((a*r) - (b*s),(a*s) + (b*r)) (by CMult).
u**(v**w) = u ** ((a,b) ** (r,s)) 
		  = u ** (  ((a*r) - (b*s) , (a*s) + (b*r))  )
		  = (  ( x * ((a*r) -(b*s)) ) - (y*((a*s) + (b*r))) , (x*((a*s) + (b*r))) + (y*((a*r) - (b*s))))
		  = ((x*((a*r) + -(b*s))) + -(y*((a*s) + (b*r))) , (x*((a*s) 	+ (b*r))) + (y*((a*r) + -(b*s))))
		  = (  ( (x*(a*r)) + (x*(-(b*s))) ) + -( (y*(a*s)) + (y*(b*r)) )  , ( (x*(a*s)) + (x*(b*r)) ) + ( (y*(a*r)) + (y*(-(b*s))) ) )
		  = (  ( (x*(a*r)) + -(x*(b*s)) ) + ( -(y*(a*s)) + -(y*(b*r)) )  ,  ( (x*(a*s)) + (x*(b*r)) ) + ( (y*(a*r)) + -(y*(b*s)) ) )
		  = (  ( ((x*a)*r) + -((x*b)*s) ) + ( -((y*a)*s) + -((y*b)*r) )  ,  ( ((x*a)*s) + ((x*b)*r) ) + ( ((y*a)*r) + -((y*b)*s) ) )
		  = ( (c + e) + (f + d) , (g + j) + (k + h) ) = (u**v)**w.
Then (u**v)**w = u**(v**w). qed.


Proposition CmpFld8. u**(1,0) = u.
Proof. Let x,y be real numbers such that u = (x,y). Then u ** (1,0) = ((x,y)) ** (1,0) = ((x*1)-(y*0) , (x*0)+(y*1)). 
	Let a = x*1 and b = y*0 and c = x*0 and d = y*1.
		
	((x*1)-(y*0) , (x*0)+(y*1)) = (a-b, c+d).
	Then a = x and b = 0 and c = 0 and d = y.
 	(a-b, c+d) = (x-0 , 0+y) = (x,y) = u .
Then u**(1,0) = u.
qed.




###Axiome fur ordSet

Signature. x < y is an atom.
Let x > y stand for y < x.
Let x <= y stand for x<y or x=y.
Let x >= y stand for y <= x.

Axiom. Then x<y or y<x or x = y.
#Axiom. If x<y then not x=y. #and if x<y then not y<x.
Axiom. Then not ((x<y and y<x) or (x<y and y=x) or (x=y and y<x)).
Axiom Trans. If x<y and y<z then x<z.

###Axiome für ordField
Axiom InEqAdd. If y<z then x+y<x+z.
Axiom. If x>0 and y>0 then x*y>0.

#Bewiesene Aussagen
Axiom P118d. If not x = 0 then x*x > 0.
Axiom P118e1. If 0<y then 0 < inv(y).
[prove on]
[prove off]

Proposition SqrtMon. If x*x > y*y and x > 0  and y >= 0 then x>y.
Proof.	Assume x*x > y*y and x>0 and y >= 0.
		Thus  -(y*y) + (x*x) > -(y*y) + (y*y) (by InEqAdd). 
		Hence (x*x) - (y*y) > 0.
		Then  (x + y) * (x - y) > 0.
		x + y > 0.
		proof. 	x > 0. Then x + y > y.
				case y > 0. Then x + y > 0 (by Trans). end.
				case y = 0. Then x + y > 0 . end.
		end.
		Thus inv(x + y) > 0. Hence inv(x + y) * ((x + y) * (x - y)) > 0.
		We have inv(x + y) * ((x + y) * (x - y)) 
			 = (inv(x + y) * (x + y)) * (x - y)
			 = 1 * (x - y) = x - y.
		Then x - y > 0.
		Thus (x + -y) + y > 0 + y.
		Hence x + (-y + y) > 0 + y.
qed.







[prove on]
[prove off]
Lemma 21O. If (not x = 0) or (not y = 0) then (x*x) + (y*y)>0.
Proof. 
	Assume (not x=0) or (not y=0).
	Let a = x*x and b = y*y.
	Then a> 0 or b>0.
	Then a>= 0 and b>=0.
	Let us show that a + b > 0.
		Case a>0. Then a+b>=a+0>=a>0. end.
		Case b>0. Then a+b>=0+b>=b>0. end.
	end.
qed.

Proposition CmpFld9. If not u = (0,0) then there exists a complex number v such that u**v = (1,0).
Proof. Assume not u = (0,0).
	   Let x,y be real numbers such that u = (x,y).
	   #Assume x = 0 and y=0. Then u = (0,0). Contradiction. 
		Then (not x=0) or (not y=0).
		Then (x*x) + (y*y)>0 (by 21O).
	   Then not (x*x) + (y*y) = 0 .

	   Let d = inv((x*x) + (y*y)) and 
	   	   v = (x*d , -y*d). 
	   Then u**v = ( (x*(x*d)) - (y*(-y*d)) , (x*(-y*d)) + (y*(x*d)))
	   			= ( (x*(x*d)) + -(-y*(y*d)) , -(x*(y*d)) + (y*(x*d)))
	   			= ( (x*(x*d)) + (y*(y*d)) , -(x*(y*d)) + (y*(x*d)))
	   			= ( ((x*x)*d) + ((y*y)*d) , -((x*y)*d) + ((y*x)*d))
	   			= ( ((x*x) + (y*y))*d , -((x*y)*d) + ((x*y)*d))
	   			= ( ((x*x) + (y*y))*inv((x*x) + (y*y)) , 0)
	   			= (1,0).
		Then u**v = (1,0).
		Then v is a complex number such that u**v = (1,0).
		If not u = (0,0) then there exists a complex number w such that u**w = (1,0).
	   qed.




Proposition CmpFld10. u**(v++w) = (u**v) ++ (u**w).
Proof.	Let x,y,a,b,r,s be real numbers such that (u = (x,y) and v = (a,b) and w = (r,s)).
		Let c = x*a and d = x*r and e = -(y*b) and f = -(y*s) and g = x*b and  h = x*s and  j = y*a and k = y*r.
		v++w = (a+r,b+s) (by CAdd).
		u**v = (x,y) ** (a,b) = ((x*a) - (y*b), (x*b) + (y*a)) (by CMult).  #1
		u**w = (x,y) ** (r,s) = ((x*r) - (y*s) , (x*s) + (y*r)) (by CMult). #2
		Then u**(v++w) 	= (x,y) ** (a+r,b+s) = ( (x*(a+r)) - (y*(b+s)) , (x*(b+s)) + (y*(a+r)) )
						= ( ((x*a) + (x*r)) - (y*(b+s)) , (x*(b+s)) + (y*(a+r)) )
						= ( ((x*a) + (x*r)) - ((y*b) + (y*s)) , (x*(b+s)) + (y*(a+r)) ).

						( ((x*a) + (x*r)) - ((y*b) + (y*s)) , (x*(b+s)) + (y*(a+r)) )
						= ( ((x*a) + (x*r)) - ((y*b) + (y*s)) , ((x*b) + (x*s)) + (y*(a+r)) ) (by Dis1).
						
						( ((x*a) + (x*r)) - ((y*b) + (y*s)) , ((x*b) + (x*s)) + (y*(a+r)) )
						= ( ((x*a) + (x*r)) - ((y*b) + (y*s)) , ((x*b) + (x*s)) + ((y*a) + (y*r)) ) (by Dis1).

						( ((x*a) + (x*r)) - ((y*b) + (y*s)) , ((x*b) + (x*s)) + ((y*a) + (y*r)) )
						= (((x*a) + (x*r)) + -((y*b) + (y*s)) , ((x*b) + (x*s)) + ((y*a) + (y*r)) )
						= (((x*a) + (x*r)) + (-(y*b) + -(y*s)) , ((x*b) + (x*s)) + ((y*a) + (y*r)) )
						= ((c + d) + (e + f) , (g + h) + (j + k))
						= ((c + e) + (d + f) , (g + j) + (h + k))
						= (c+e,g+j) ++ (d+f,h+k)
						= ((x*a) + -(y*b), (x*b) + (y*a)) ++ ((x*r) + -(y*s) , (x*s) + (y*r))
						= ((x*a) - (y*b), (x*b) + (y*a)) ++ ((x*r) - (y*s) , (x*s) + (y*r))
						= ((x,y) ** (a,b)) ++ ((x,y) ** (r,s)) ##wegen #1 und #2
						= (u**v) ++ (u**w).
		Then u**(v++w) = (u**v) ++ (u**w).
qed.

Proposition ZeroMult. u**(0,0) = (0,0).
Proof. Let x,y be real numbers such that u = (x,y). Then u**(0,0) = ((x*0) - (y*0), (x*0) + (y*0)) (by CMult). 
Let a=x*0 and b=y*0.
((x*0) - (y*0), (x*0) + (y*0)) = (a-b,a+b) = (0 - 0, 0 + 0) = (0,0). 
Then u**(0,0) = (0,0). 
qed.

Proposition. (a,0) ++ (b,0) = (a+b,0) and (a,0)**(b,0) = (a*b,0).
Proof. 	(a,0) ++ (b,0) = (a+b,0+0) = (a+b,0) (by CAdd).
		(a,0) ** (b,0) = ((a*b) - (0*0), (a*0) + (0*b)) (by CMult).
		Let c = a*0 and d = b*0 and e = 0*0.
		Then c = 0 and d = 0 and e = 0.
		Then ((a*b) - e, c + d) = ((a*b) -0, 0 + 0) = ((a*b )+ -0,0) = (a*b,0) . qed.

Signature. ! is a complex number such that ! = (0,1).

Proposition. !**! = (-1,0).
Proof. 	!**! .= (0,1) ** (0,1) 
		.= ((0*0) - (1*1),( 0*1) + (1*0)) (by CMult)
		.=((0*0) - (1*1),( 0*1) + (1*0)) 
		.= (0 - 1, 0+0) 
		.= (0+(-1),0).
		Then (0+(-1),0) = ((-1),0). 
qed.

Let x+y! stand for (x,0) ++ ((y,0)**!).


Proposition. a+b! = (a,b).
Proof. 	(b,0)**(0,1) = ((b*0)-(0*1) , (b*1)+(0*0)) (by CMult).
		a+b! = (a,0) ++ ((b,0)**(0,1)). 
		
		(a,0) ++ ((b,0)**(0,1))
		= (a,0) ++ ((b*0)-(0*1) , (b*1)+(0*0)) (by CMult).

		(a,0) ++ ((b*0)-(0*1) , (b*1)+(0*0))
		= (a,0) ++ (0-0,b+0) 
		= (a,0) ++ (0,b).
		
		(a,0) ++ (0,b)
		= (a+0,0+b) 
		= (a,b).
qed.


Signature. Conj(u) is a complex number.
Signature. Re(u) is a real number.
Signature. Im(u) is a real number.
Axiom. Conj((x,y)) = (x,-y).
Axiom. Re((x,y)) = x.
Axiom. Im((x,y)) = y.

Proposition Conj1. Conj(u++v) = Conj(u) ++ Conj(v).
Proof. 	Let x,y,a,b be real numbers such that (u = (x,y) and v = (a,b)).
		Then u++v = (x+a,y+b) (by CAdd).
		Then Conj(u ++ v) = Conj((x+a,y+b)) = (x+a,-(y+b)) = (x+a, -y + -b) = (x,-y) ++ (a,-b) = Conj(u) ++ Conj(v).
		Then Conj(u++v) = Conj(u) ++ Conj(v).
qed.		
Proposition Conj2. Conj(u**v) = Conj(u) ** Conj(v).
Proof. 	Let x,y,a,b be real numbers such that (u = (x,y) and v = (a,b)).
		Then u ** v = ((x*a)-(y*b),(x*b)+(y*a)) (by CMult).
		Then Conj(u ** v) 	= Conj(((x*a)-(y*b),(x*b)+(y*a))) 
							= ((x*a) - (y*b)       ,-((x*b)+(y*a))) 
							= ((x*a) - (y*b)       , -(x*b)+ -(y*a))
							= ((x*a) - (-(-(y*b))) , -(x*b)+ -(y*a))
							= ((x*a) - ( -((-y)*b) ) , (x*(-b))+ ((-y)*a))
							= ((x*a) - ((-y)*(-b)) , (x*(-b))+ ((-y)*a))
							= (x,-y) ** (a,-b)
							= Conj(u) ** Conj(v). 
		Then Conj(u**v) = Conj(u) ** Conj(v).
qed.

Proposition Conj3. u ++ Conj(u) = (Re(u)+Re(u),0) and u ++ ((-1,0)**Conj(u)) = (0,Im(u)+Im(u)).
Proof. Let x,y be real numbers such that u=(x,y).
	   Then u ++ Conj(u) = (x,y) ++ Conj((x,y)) = (x,y) ++ (x,-y) = (x+x,y-y) = (x+x,0) = (Re(u)+Re(u),0).
	   (-1,0)**(x,-y) = ( ((-1)*x) - (0*(-y)) , ((-1)*(-y)) + (0*x)) (by CMult).
	   u ++ ((-1,0)**Conj(u))	= (x,y) ++ ((-1,0)**Conj((x,y))) = (x,y) ++ ((-1,0)**(x,-y)) 
	   							= (x,y) ++ ( ((-1)*x) - (0*(-y)) , ((-1)*(-y)) + (0*x))
	   							= (x,y) ++ (-x - 0, -(-y) + 0)
	   							= (x,y) ++ (-x , y) = (x-x,y+y) = (0,Im(u)+Im(u)).
	   	Then u ++ Conj(u) = (Re(u)+Re(u),0) and u ++ ((-1,0)**Conj(u)) = (0,Im(u)+Im(u)).
qed.	   

Proposition Conj4. If not u = (0,0) then there exists a real number z such that (z>0 and u ** Conj(u) = (z,0)).
Proof.	Let not u = (0,0).
	   	Take real numbers x,y such that u = (x,y).
	   	#Assume x = 0 and y=0. Then u = (0,0). Contradiction. Hence not x=0 or not y=0.
		Then (x*x)> 0 or (y*y)>0. Take z = (x*x) + (y*y). 
		Then z > 0 (by 21O).
		u**Conj(u) = (x,y)**Conj((x,y)) = (x,y)**(x,-y) = ((x*x) - (y*(-y)) , (x*(-y)) + (y*x)) = ((x*x) + -(-(y*y)) , -(x*y) + (x*y)) = ((x*x) + (y*y), 0) = (z,0).
		z is a real number.
		Then z is a real number and (z>0 and u**Conj(u) = (z,0)).
qed.

Proposition Conj5. Conj(Conj(u)) = u.
Proof. 	Let x,y be real numbers such that u = (x,y).
		Then Conj(Conj(u)) = Conj(Conj((x,y))) = Conj((x,-y)) = (x,--y) = (x,y) = u. qed.


Signature. |u| is a real number such that (|u|*|u|,0) = u**Conj(u) and |u| >= 0. 
Axiom. If (x*x,0) = u**Conj(u) and x >= 0 then x = |u|.



Proposition Abs1. If not u = (0,0) then |u| > 0.
Proof.  Let z be a real number such that (z > 0 and u**Conj(u) = (z,0)). Then (|u|*|u|,0) = (z,0).
		Assume |u| = 0. Then z = 0*0 = 0. Contradiction. 
		Then |u| > 0.
qed.
[prove on]
Proposition Abs2. |(0,0)| = 0.
Proof. 	(0,0) ** Conj((0,0)) = Conj((0,0)) ** (0,0) = (0,0). 
		Let us show that |(0,0)|*|(0,0)| = 0.
		Assume |(0,0)| > 0. Then not |(0,0)| = 0 .Then |(0,0)|*|(0,0)| > 0. Then not |(0,0)|*|(0,0)| = 0. Contradiction.end. 
		Hence |(0,0)| = 0.
qed.

Proposition Abs3. |u| = |Conj(u)|.
Proof. 	|u| is a real number such that ((|u|*|u|,0) = u**Conj(u) and |u| >= 0). 
		(|u|*|u|,0) = Conj(Conj(u))**Conj(u) = Conj(u)**Conj(Conj(u)).
		Let v = Conj(u). Then |u| is real number such that ((|u|*|u|,0) = v**Conj(v) and |u| >= 0). 
		Hence |u| = |v|.
qed.

Proposition Abs4. |u**v| = |u| * |v|.
Proof. 	Case u = (0,0) or v = (0,0). Then v**u = (0,0) or u**v = (0,0) (by ZeroMult). Hence |u**v| = 0.
									|u| = 0 or |v| = 0 (by Abs2). Hence |u| * |v| = 0.
									Then  |u**v| = |u|*|v|. end.
		Case (not u=(0,0)) and (not v = (0,0)). Then |u| > 0 and |v| > 0 (by Abs1). Let z = |u| * |v|. Then z > 0.
												z*z = (|u|*|v|) * (|u|*|v|) = ((|u|*|v|)*|u|)*|v| = (|u|*(|v|*|u|))*|v|
													= (|u|*(|u|*|v|))*|v| = ((|u|*|u|)*|v|)*|v| = (|u|*|u|)*(|v|*|v|).
												Hence (z*z,0)	= ((|u|*|u|)*(|v|*|v|), 0) = (|u|*|u|,0) ** (|v|*|v|,0)
																= (u  **  Conj(u)) ** (v   ** Conj(v)) 
																= ((u **  Conj(u)) **  v)  ** Conj(v) 
									       	 	   				= ( u ** (Conj(u)  **  v)) ** Conj(v) 
									       	    				= ( u ** (v  **  Conj(u))) ** Conj(v) 
									      						= ((u **  v) **  Conj(u))  ** Conj(v) 
									      						= ( u **  v) **  (Conj(u)   ** Conj(v)) = (u**v)**Conj(u**v).
									      		Then z = |u**v|. Then |u| * |v| = |u**v|. end.
qed.

Proposition Abs5. |(Re(u),0)| <= |u|.
Proof. 	Let x,y be real numbers such that u = (x,y). 
		Case y = 0. Then |u| = |(x,y)| = |(Re(u),0)|. end.
		Case not y = 0. Then not u = (0,0). Thus |u| > 0.
 						(|u|*|u|,0) = u**Conj(u) = (x,y) ** (x,-y) = ((x*x) - (y*(-y)) , (x*(-y)) + (y*x)) = ((x*x) + -(-(y*y)) , -(x*y) + (x*y)) 
									= ((x*x) + (y*y), 0). Then |u|*|u| = (x*x)+(y*y).
						(|(Re(u),0)|*|(Re(u),0)|,0) = (Re(u),0)**Conj((Re(u),0)) = (Re(u),0)**(Re(u),-0) = (Re(u),0)**(Re(u),0) = (x,0)**(x,0) = (x*x,0).
						Then |(Re(u),0)|*|(Re(u),0)| = x*x.
						Hence (|u|*|u|) -  (|(Re(u),0)|*|(Re(u),0)|) = ((x*x) + (y*y)) - (x*x) = ((y*y) + (x*x)) + -(x*x) = (y*y) + ((x*x) + -(x*x)) = (y*y) + 0 = y*y and y*y > 0.
						Thus (|u|*|u|) -  (|(Re(u),0)|*|(Re(u),0)|) > 0.
						Hence |u|*|u| > |(Re(u),0)|*|(Re(u),0)| and |u| > 0 and |(Re(u),0)| >= 0.
						Thus  |u| > |(Re(u),0)| (by SqrtMon).
		end.
qed.


Proposition Abs6. |u ++ v| <= |u| + |v|.
Proof. (|u ++ v|*|u ++ v|,0)	= (u ++ v) ** Conj(u ++ v) = (u ++ v) ** (Conj(u) ++ Conj(v))
								=  ((u ++ v) ** Conj(u)) ++ ((u ++ v) ** Conj(v)) 
								=  (Conj(u) ** (u ++ v)) ++ (Conj(v) ** (u ++ v)) 
								=  ((Conj(u) ** u) ++ (Conj(u) ** v)) ++ ((Conj(v) ** u) ++ (Conj(v) ** v))
								=  ((u ** Conj(u)) ++ (v ** Conj(u))) ++ ((u ** Conj(v)) ++ (v ** Conj(v)))
								=  (u ** Conj(u)) ++ ((v ** Conj(u)) ++ ((u ** Conj(v)) ++ (v ** Conj(v))))
								=  (u ** Conj(u)) ++ (((v ** Conj(u)) ++ (u ** Conj(v))) ++ (v ** Conj(v)))
								=  (u ** Conj(u)) ++ ((v ** Conj(v)) ++ ((v ** Conj(u)) ++ (u ** Conj(v))))
								=  (u ** Conj(u)) ++ ((v ** Conj(v)) ++ ((v ** Conj(u)) ++ (Conj(Conj(u)) ** Conj(v))))
								=  (u ** Conj(u)) ++ ((v ** Conj(v)) ++ ((v ** Conj(u)) ++ Conj(Conj(u) ** v) ))
								=  (u ** Conj(u)) ++ ((v ** Conj(v)) ++ ((v ** Conj(u)) ++ Conj(v ** Conj(u)) ))
								=  (u ** Conj(u)) ++ ((v ** Conj(v)) ++ (Re(v ** Conj(u))+Re(v ** Conj(u)),0) )
								=  (|u|*|u|,0) ++ ((|v|*|v|,0) ++ (Re(v ** Conj(u))+Re(v ** Conj(u)),0) )
								=  ((|u|*|u|,0) ++ (|v|*|v|,0)) ++ (Re(v ** Conj(u))+Re(v ** Conj(u)),0)
								= ((|u|*|u|) + (|v|*|v|),0+0) ++ (Re(v ** Conj(u))+Re(v ** Conj(u)),0)
								=(((|u|*|u|) + (|v|*|v|)) + (Re(v ** Conj(u))+Re(v ** Conj(u))), 0 + 0)
								=(((|u|*|u|) + (|v|*|v|)) + (Re(v ** Conj(u))+Re(v ** Conj(u))), 0 ).
								Thus |u ++ v|*|u ++ v| = ((|u|*|u|) + (|v|*|v|)) + (Re(v ** Conj(u))+Re(v ** Conj(u))).
								Re(v ** Conj(u)) <= |(Re(v ** Conj(u)),0)|.
								proof. 	Let x,y be real numbers such that v**Conj(u) = (x,y).

								end.
qed.


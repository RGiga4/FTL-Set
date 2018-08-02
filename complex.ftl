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

Axiom. x*(y+z)=(x*y)+(x*z).
Axiom. (y+z)*x=(y*x)+(z*x).

###weitere bewissene Aussagen
Axiom P114c. If x+y = 0 then y = -x.
Axiom P114d. -(-x) = x.# Drastische beschleunigung.
Axiom P115c. If (not x=0) and x*y = 1 then y = inv(x).  
Axiom P115d. If not x=0 then inv(inv(x)) = x.
Axiom P116c. (-x)*y = -(x*y) = x*(-y).

Axiom. -(x+y) = -x + -y. #Nicht Bewiesen


###Axiome fur ordSet

Signature. x < y is an atom.
Let x > y stand for y < x.
Let x <= y stand for x<y or x=y.
Let x >= y stand for y <= x.

Axiom. Then x<y or y<x or x = y.
Axiom. If x<y then not x=y. #and if x<y then not y<x.
Axiom. If x<y and y<z then x<z.

###Axiome für ordField
Axiom. If y<z then x+y<x+z.
Axiom. If x>0 and y>0 then x*y>0.

#Bewiesene Aussagen
Axiom P118d. If not x = 0 then x*x > 0.
Axiom P118e1. If 0<y then 0 < inv(y).

Signature. A complex number is a notion.
Let u,v,w denote complex numbers.
Signature. Let x,y be real numbers. (x,y) is a complex number.
Signature. u ++ v is a complex number.
Signature. u ** v is a complex number.
Axiom. If u is a complex number then there exist real numbers x,y such that u = (x,y).
Axiom CAdd. (x, y) ++ (a, b) = (x + a, y + b) .
Axiom CMult. (x, y) ** (a, b) = ((x*a) - (y*b), (x*b) + (y*a)).

Proposition CmpFld2.  u ++ v = v ++ u.
Proof. Let x,y,a,b be real numbers such that (u = (x,y) and v = (a,b)).
Then u ++ v = (x,y) ++ (a,b) 
	    = ((x + a), (y + b)) 	
	    = (a + x, b + y) 
	    = (a,b) ++ (x,y)
	    = v ++ u. 
Then u ++ v = v ++ u.
qed. 

Proposition CmpFld3. (u ++ v) ++ w = u ++ (v ++ w).
Proof. Let x,y,a,b,r,s be real numbers such that (u = (x,y) and v = (a,b) and w = (r,s)).
Then (u ++ v) ++ w = ((x+a)+r, (y+b)+s) = (x+(a+r), y+(b+s)) = u ++ (v ++ w) .
Then (u++v)++w=u++(v++w). qed.

Proposition CmpFld4. u ++ (0,0) = u.
Proof. Let x,y be real numbers such that u = (x,y). Then u ++ (0,0) = (x+0,y+0) = (x,y) = u. qed.

#Proposition CmpFld5. For every complex number u there exists a complex number v such that u ++ v = (0,0).
#Proof. Let x,y be real numbers such that u = (x,y). Let v = (-x, -y). Then v is a complex number and u ++ v = (x-x, y-y) = (0,0). qed.

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
     		   =  (  ( (c + d) + e ) + f ,  ( ( g + h ) +  j )+ k  )
       	 	   =  (  ( c + (d + e) ) + f ,  ( g + ( h + j ) ) + k  )
       	       =  (  ( c + (e + d) ) + f ,  ( g + ( j + h ) ) + k  )
      		   =  (  ( (c + e) + d ) + f , ( (g +  j) + h  ) + k  )
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
Proof. Let x,y be real numbers such that u = (x,y). Then u ** (1,0) = ((x,y)) ** (1,0) = ((x*1)-(y*0) , (a*0)+(y*1)) = (x-0 , 0+y) = (x,y) = u . qed.

Proposition CmpFld9. If not u = (0,0) then there exists a complex number v such that u**v = (1,0).
Proof. Let x,y be real numbers such that u = (x,y).
	   Then not (x = 0) or not (y = 0).
	   Hence (x*x)> 0 or (y*y)>0. 
	   Then (x*x) + (y*y) > 0.qed.

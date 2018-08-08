Lemma P777. Re(u) <= |(Re(u),0)|.
Proof.
	Let x,y be real numbers such that u = (x,y).
	Let v = (x, 0).
	Then Re(u) = x = Re(v).
	Case x>0.
		
		Then (x*x,0) = v**Conj(v).
		Then x = |v| (by EindAbs).
		Then Re(u)=Re(v)=|v|=|(Re(v),0)| = |(Re(u),0)|.
		Then Re(u) <= |(Re(u),0)|.
	end.
	Case x <= 0.
		Then |(Re(u),0)| >=0.
		x <= 0 <= |(Re(u),0)|.
	end.
qed.


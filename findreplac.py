 
f1 = open('prereelsBtex.tex', 'r')
f2 = open('out.tex', 'w')
res = ''
inblock = 0
for line in f1:
	res = line
	if '\\begin{forthel}' in line:
		inblock = 1
	if '\\end{forthel}' in line:
		inblock = 0
	if inblock == 1:
		if 'Proof.' in line:
			res = res.replace('Proof.', '\\begin{proof}\n')
		if 'qed.' in line:
			res = res.replace('qed.', '\\end{proof}\n')
		if 'Obvious.' in line:
			res = res.replace('Obvious.', 'Obvious.\\end{proof}\n')
		
		if 'Proposition' in line:
			res = res.replace('Proposition', '\\begin{theorem}\n')
			res = res + '\\end{theorem}'
		if 'Axiom' in line:
			res = res.replace('Axiom', '\\begin{axiom}')
			res = res + '\n\\end{axiom}\n'
		if 'Definition' in line:
			res = res.replace('Definition', '\\begin{definition}')
			res = res + '\n\\end{definition}\n'
		if 'Signature' in line:
			res = res.replace('Signature', '\\begin{signature}')
			res = res + '\n\\end{signature}\n'
		if 'Lemma' in line:
			res = res.replace('Lemma', '\\begin{lemma}')
			res = res + '\n\\end{lemma}\n'
		if '}.' in res:#wie alles hier unsafe by ReelsA
			res = res.replace('}.', '}')
			
		if '>=' in line:
			res = res.replace('>=', '$\\geq$')
		if '<=' in line:
			res = res.replace('<=', '$\\leq$')
		if '>' in line:
			res = res.replace('>', '$>$')
		if '<' in line:
			res = res.replace('<', '$<$')
		if 'REL' in line:
			res = res.replace('REL', '$\\mathbb{R}$')
		if 'NAT' in line:
			res = res.replace('NAT', '$\\mathbb{N}$')
		if 'QS' in line:
			res = res.replace('QS', '$\\mathbb{Q}$')
		if 'ZS' in line:
			res = res.replace('ZS', '$\\mathbb{Z}$')
		if '|' in line:
			res = res.replace('|', '$|$')
		
		if '**' in line:
			res = res.replace('**', '$\cmul$')
		if '*' in line:
			res = res.replace('*', '$\cdot$')
		if '.=' in line:
			res = res.replace('.=', '=')
		#if 'Conj' in line:
		#	res = res.replace('Conj', '\\Conj')
		if '++' in line:
			res = res.replace('++', '$\cadd$')
		
		
	f2.write(res)
f1.close()
f2.close()
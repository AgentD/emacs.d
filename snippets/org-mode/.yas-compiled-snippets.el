;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("wed" "\\wedge $0" "wedge" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/wedge-and" nil nil)
		       ("vee" "\\vee $0" "or" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/vee-or" nil nil)
		       ("tree" "\\begin{center}\n\\begin{tikzpicture}[nodes={draw, circle}, ->,\n  level distance=1.5cm,\n  level 1/.style={sibling distance=3cm},\n  level 2/.style={sibling distance=2cm},\n  level 3/.style={sibling distance=1cm}]\n  \\node {root}\n    child {node {child}\n   	 child {node {grandchild}}\n    	 child {node {grandchild}}\n	 }\n   child {node {child}\n      	 child {node {grandchild}}\n    	 child {node {grandchild}}\n};\n\\end{tikzpicture}\n\\end{center}\n" "tree" nil nil
			((yas-indent-line 'fixed))
			"/home/gabriel/.emacs.d/snippets/org-mode/tree" nil nil)
		       ("times" "$\\times$$0" "times" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/times" nil nil)
		       ("tfrac" "\\tfrac{$1}{$2}$0" "tfrac" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/tfrac" nil nil)
		       ("tt" "\\texttt{$0}" "tt" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/texttt" nil nil)
		       ("tag" "\\tag{$0}" "tag" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/tag" nil nil)
		       ("sum" "\\sum_{$1}^{$2}{$0}" "sum" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/sum" nil nil)
		       ("subq" "\\subseteq" "subq" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/subq" nil nil)
		       ("sqr" "\\sqrt{$1} $0" "sqrt" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/sqrt" nil nil)
		       ("rref" "\\stackrel{$1}{$2} $0" "rref" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/rref" nil nil)
		       ("ra" "\\rightarrow $0" "rightarrow" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/rightarrow_math" nil nil)
		       ("rarrow" "$\\rightarrow$$0" "rarrow" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/rightarrow" nil nil)
		       ("q" "\\quad $0" "quad" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/quad" nil nil)
		       ("qq" "\\qquad $0" "qquad" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/qquad" nil nil)
		       ("qed" "\\begin{flushright}\n$\\blacksquare/QED\\qquad$\n\\end{flushright}\n" "qed" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/qed" nil nil)
		       ("pmod" "\\pmod{$1} $0" "pmod" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/pmod" nil nil)
		       ("pmatrix" "\\begin{pmatrix}\n$0\n\\end{pmatrix}" "pmatrix" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/pmatrix" nil nil)
		       ("ol" "\\overline{$1}$0" "overline" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/overline" nil nil)
		       ("ne" "\\neg $0" "negation" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/negation" nil nil)
		       ("mti" "\\times $0" "times" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/mtimes" nil nil)
		       ("mcal" "\\mathcal{$1}$0" "mcal" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/mcal" nil nil)
		       ("mbb" "\\mathbb{$1}$0" "mathbb" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/mbb" nil nil)
		       ("matrix" "\\begin{matrix}\n$0\n\\end{matrix}" "matrix" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/matrix" nil nil)
		       ("txt" "\\text{ $1 } $0" "txt" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/math_text" nil nil)
		       ("sim" "\\sim $0" "sim" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/math-sim" nil nil)
		       ("lst" "\\begin{lstlisting}[frame=single]\n$0\n\\end{lstlisting}" "lst" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/lstlisting" nil nil)
		       ("log" "\\log{$0}" "log" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/log" nil nil)
		       ("lsti" "\\lstinputlisting[language=$1,frame=single]{$0}" "importlst" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/importlst" nil nil)
		       ("img" "\\begin{center}\n	\\includegraphics[width=1.0\\textwidth]{$0}\n %	\\captionof{figure}{}\n	\\label{fig:}\n\\end{center}" "image" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/image" nil nil)
		       ("frac" "\\frac{$1}{$2}$0" "frac" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/frac" nil nil)
		       ("flushright" "\\begin{flushright}\n$0\n\\end{flushright}" "flushright" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/flushright" nil nil)
		       ("dfrac" "\\dfrac{$1}{$2}$0" "dfrac" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/dfrac" nil nil)
		       ("cd" "\\cdot $0" "dot" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/cdot" nil nil)
		       ("src" "#+BEGIN_SRC $1\n$0\n#+END_SRC" "src" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/begin-src" nil nil)
		       ("bgdoc" "#+LATEX_CLASS: article\n#+LaTeX_HEADER:\\usepackage{amsfonts,amsmath,amssymb,amsthm}\n#+LaTeX_HEADER:\\usepackage{booktabs}\n#+LaTeX_HEADER:\\usepackage[english,ngerman]{babel}\n#+LaTeX_HEADER:\\usepackage{caption}\n#+LaTeX_HEADER:\\usepackage{capt-of}\n#+LaTeX_HEADER:\\usepackage{changepage}\n#+LaTeX_HEADER:\\usepackage{fullpage}\n#+LaTeX_HEADER:\\usepackage[euler]{textgreek}\n#+LaTeX_HEADER:\\usepackage{textcomp}\n#+LaTeX_HEADER:\\usepackage{mathtools}\n#+LaTeX_HEADER:\\usepackage{pmboxdraw}\n#+LaTeX_HEADER:\\usepackage{listings}\n#+LaTeX_HEADER:\\usepackage{marvosym}\n#+LaTeX_HEADER:\\usepackage{ragged2e}\n#+LaTeX_HEADER:\\usepackage{tikz}\n# %\\usepackage[onehalfspacing]{setspace}\n\n\\justify\n\\setlength{\\parindent}{0pt}\n\\lstset{basicstyle=\\ttfamily,columns=fixed,language=C,showstringspaces=false}\n\\usetikzlibrary{shapes,arrows,automata}\n\n#+OPTIONS: tex:t\n#+OPTIONS: toc:nil\n#+OPTIONS: num:nil\n\n#+Title:\n#+Author:\n#+Date:" "begindoc" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/begin-doc" nil nil)
		       ("array" "\\[\\left . \\begin{array}\n$0\n\\end{array}\\right\\]" "array" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/array" nil nil)
		       ("align*" "\\begin{align*}\n$0\n\\end{align*}" "align no num" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/align_no_num" nil nil)
		       ("align" "\\begin{align}\n$0\n\\end{align}" "align" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/align-math" nil nil)
		       ("Ra" "\\Rightarrow $0" "Rightarrow" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/Rightarrow_double" nil nil)
		       ("Lra" "\\Longrightarrow" "Longrightarrow" nil nil nil "/home/gabriel/.emacs.d/snippets/org-mode/Longrightarrow" nil nil)))


;;; Do not edit! File generated at Sat Jun 15 17:51:07 2019
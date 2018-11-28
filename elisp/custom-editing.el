(transient-mark-mode 1)
;; tab width
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default show-trailing-whitespace t)
(setq-default tab-always-indent nil)
;(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "linux"
	  c-basic-offset 8)

;; Make backspace erase the tab instead of removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)
(add-hook 'java-mode-hook (lambda()
		    	(setq c-basic-offset 4)
				(setq tab-width 4)
				(c-set-offset 'inline-open 0)))

(add-hook 'sh-mode-hook (lambda()
				(setq sh-basic-offset 8)
				(setq tab-width 8)
			    (setq sh-intendation 8)))

(add-hook 'emacs-lisp-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq lisp-body-indent 4)))

(add-hook 'lisp-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq auto-fill-mode nil)
				(setq lisp-body-indent 4)))

(add-hook 'haskell-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq auto-fill-mode nil)
				(setq indent-tabs-mode nil)))

(add-hook 'python-mode-hook (lambda ()
				(setq c-basic-offset 4)
				(setq indent-tabs-mode t)
				(setq python-indent 4)
				(setq tab-width 4)))

(add-hook 'c-mode-hook (lambda ()
						(setq indent-tabs-mode t)
						(c-set-style "linux")
						(c-set-offset 'comment-intro 0)))
(defun c-lineup-arglist-tabs-only (ignored)
	"Line up argument lists by tabs, not spaces"
	(let* ((anchor (c-langelem-pos c-syntactic-element))
		(c-langelem-2nd-pos c-syntactic-element))
		(offset (- (1+ column) anchor))
		(steps (floor offset c-basic-offset)))
		(* (max steps 1)
		c-basic-offset))

(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)
(delete-selection-mode 1)
(xterm-mouse-mode 1)
(cua-selection-mode 1)
(setq visible-cursor nil)
(fset 'yes-or-no-p 'y-or-n-p)
(put 'suspend-frame 'disabled t)
(setq tex-fontify-script nil) ;; disables custom fonts in LaTeX buffer display
(setq font-latex-fontify-sectioning 1.2)
(setq font-latex-fontify-script nil)

(setq org-highlight-latex-and-related '(latex script entities))
(setq org-src-fontify-natively t
	  org-src-tab-acts-natively t
	  org-confirm-babel-evaluate nil
	  org-edit-src-content-indentation 0)

;; reuse compilation window even if it is in anoter frame
(add-to-list 'display-buffer-alist
			 '("\\*compilaition\\*"
			   . (nil (reusable-frames . visible))))

(setq-default TeX-command-list
   (quote
	(("TeX" "%(PDF)%(tex) %(file-line-error) %`%(extraopts) %S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
	  (plain-tex-mode texinfo-mode ams-tex-mode)
	  :help "Run plain TeX")
	 ("LaTeX" "%`%l%(mode)%' %T" TeX-run-TeX nil
	  (latex-mode doctex-mode)
	  :help "Run LaTeX")
	 ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
	  (texinfo-mode)
	  :help "Run Makeinfo with Info output")
	 ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
	  (texinfo-mode)
	  :help "Run Makeinfo with HTML output")
	 ("AmSTeX" "amstex %(PDFout) %`%(extraopts) %S%(mode)%' %t" TeX-run-TeX nil
	  (ams-tex-mode)
	  :help "Run AMSTeX")
	 ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
	  (context-mode)
	  :help "Run ConTeXt once")
	 ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
	  (context-mode)
	  :help "Run ConTeXt until completion")
	 ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
	 ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
	 ("Print" "%p" TeX-run-command t t :help "Print the file")
	 ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
	 ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
	 ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
	 ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
	 ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
	 ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
	 ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
	 ("upMendex" "upmendex %s" TeX-run-index t t :help "Run upmendex to create index file")
	 ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
	 ("Check" "lacheck %s" TeX-run-compile nil
	  (latex-mode)
	  :help "Check LaTeX file for correctness")
	 ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
	  (latex-mode)
	  :help "Check LaTeX file for common mistakes")
	 ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
	 ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
	 ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
	 ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
(setq-default TeX-view-program-selection
   (quote
	(((output-dvi has-no-display-manager)
	  "dvi2tty")
	 ((output-dvi style-pstricks)
	  "dvips and gv")
	 (output-dvi "xdvi")
	 (output-pdf "xpdf")
	 (output-html "xdg-open"))))

(setq default-input-method "rfc1345")
(setq tramp-default-method "ssh")

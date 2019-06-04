;;; Compiled snippets and support files for `makefile-gmake-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-gmake-mode
		     '(("java" "JFLAGS = -g -Xdiags:verbose\nJC = javac\n.SUFFIXES: .java .class\n.java.class:\n	$(JC) $(JFLAGS) $(CLASSES)\n\nCLASSES = \\\n# file.java \\\n\ndefault: classes\n\nclasses: $(CLASSES:.java=.class)\n\nclean:\n	$(RM) *.class\n" "java" nil nil
			((yas-indent-line 'fixed))
			"/home/gabriel/.emacs.d/snippets/makefile-gmake-mode/makefile_java" nil nil)
		       ("c" "CFLAGS = -std=c99 -Wall -Werror -Wextra -g\n\n.PHONY: all clean\n\nall: program1 program2\n\nclean:\n	$(RM) program1 program2 common.o\n\nprogram1: program1.c common.h common.o\n\nprogram2: program2.c common.h common.o" "c" nil nil
			((yas-indent-line 'fixed))
			"/home/gabriel/.emacs.d/snippets/makefile-gmake-mode/makefile_c_standard" nil nil)
		       ("c" "CC = gcc\nCFLAGS = -std=gnu11 -Wall -Werror -Wextra -g\n\n.PHONY: all clean\n\nall: program1 program2\n\nclean:\n	$(RM) program1 program2 common.o\n\nprogram1: program1.c common.h common.o\n\nprogram2: program2.c common.h common.o\n" "c" nil nil
			((yas-indent-line 'fixed))
			"/home/gabriel/.emacs.d/snippets/makefile-gmake-mode/makefile-c" nil nil)))


;;; Do not edit! File generated at Thu May 30 23:49:56 2019

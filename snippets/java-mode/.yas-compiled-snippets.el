;;; Compiled snippets and support files for `java-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("printf" "System.out.println(\"$0\");\n" "printf" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/sysout" nil nil)
		       ("println" "System.out.println(\"$0\");" "println" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/println" nil nil)
		       ("printf" "System.out.printf(\"$0\");\n" "printf" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/printf" nil nil)
		       ("print" "System.out.print(\"\");" "print" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/print" nil nil)
		       ("main" "public static void main(String[] args)\n{\n\n}\n" "main" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/main" nil nil)
		       ("if" "if (${1:condition}) {\n   $0\n}" "if" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/if" nil nil)
		       ("exception" "class MyException extends Exception {\n	private static final long serialVersionUID = 1L;\n	public MyException() {}\n\n	/**\n	 * Constructs exception based on given message.\n	 *\n	 * @param message\n	 *            text describing exception.\n	 */\n	public MyException(String message) {\n		super(message);\n	}\n\n	/**\n	 * Constructs exception based on given throwable object.\n	 *\n	 * @param t\n	 *            throwable to be used.\n	 */\n	public MyException(Throwable t) {\n		super(t);\n	}\n}\n" "exception" nil nil
			((yas-indent-line 'fixed))
			"/home/gabriel/.emacs.d/snippets/java-mode/exception" nil nil)
		       ("else" "else {\n     $0\n}" "else" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/else" nil nil)
		       ("class" "public class $1\n{\n    public static void main(String[] args)\n    {\n	$0\n    }\n}" "class" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/class" nil nil)
		       ("class" "import java.util.*;\n\npublic class $1\n{\n	$0\n}" "class" nil nil nil "/home/gabriel/.emacs.d/snippets/java-mode/beginn-class" nil nil)))


;;; Do not edit! File generated at Thu May 30 23:49:55 2019

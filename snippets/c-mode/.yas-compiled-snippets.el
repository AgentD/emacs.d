;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
		     '(("Inc" "#include <${1:file}>\n$0" "Inc" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/sysheader" nil nil)
		       ("once" "#ifndef ${1:name}\n#define $1\n\n$0\n\n#endif /* $1 */\n" "once" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/once" nil nil)
		       ("main" "int main(int argc, char **argv)\n{\n	$0\n\n	return EXIT_SUCCESS;\n}\n" "main" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/main" nil nil)
		       ("isc" "/*\n * Copyright (c) `(format-time-string \"%Y\")` ${1:name}\n *\n * Permission to use, copy, modify, and distribute this software for any\n * purpose with or without fee is hereby granted, provided that the above\n * copyright notice and this permission notice appear in all copies.\n *\n * THE SOFTWARE IS PROVIDED \"AS IS\" AND THE AUTHOR DISCLAIMS ALL WARRANTIES\n * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF\n * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR\n * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES\n * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN\n * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF\n * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.\n */\n$0\n" "isc" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/isc" nil nil)
		       ("if" "if (${1:condition}) {\n   $0\n}\n" "if" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/if" nil nil)
		       ("inc" "#include \"${1:file}\"\n$0" "inc" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/header" nil nil)
		       ("externc" "#ifdef __cplusplus\nextern \"C\" {\n#endif\n\n$0\n\n#ifdef __cplusplus\n}\n#endif\n" "externc" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/externc" nil nil)
		       ("else" "else {\n   $0\n}\n" "else" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/else" nil nil)
		       ("def" "#define $1 $0" "define" nil nil nil "/home/gabriel/.emacs.d/snippets/c-mode/define" nil nil)))


;;; Do not edit! File generated at Thu May 30 23:49:55 2019

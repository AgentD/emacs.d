(defun run-term (&optional arg)
	(interactive "P")
	(let ((default-directory default-directory))
		(when arg
			(when (string-match "^.*/src/$" default-directory)
				(cd "../")
				(when (file-directory-p "build")
					(cd "build"))))
		(start-process "my-urxvt" nil "xfce4-terminal")))

(global-set-key (kbd "<s-return>") 'run-term)
(global-set-key (kbd "C-c t") 'run-term)

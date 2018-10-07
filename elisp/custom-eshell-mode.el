(defun shell-other-frame()
	(interactive)
	(let ((buf (eshell)))
		(switch-to-buffer (other-buffer buf))
		(switch-to-buffer-other-window buf)))
(defun custom-eshell-command()
	(interactive)
	(cond ((eq "*scratch*" (window-buffer (selected-window)))
		   (shell-other-frame))
		  ((get-buffer-window "*scratch*")
		   (eshell))
		  (t (shell-other-frame))))

(global-set-key (kbd "s-s") 'custom-eshell-command)

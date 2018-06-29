(setq custom-themes '(gl-dark-alt xcode-dark cobalt b16-grayscale-dark
								  dark-grey))
(setq custom-themes-index 0)

(defun custom-cycle-theme ()
  (interactive)
  (setq custom-themes-index (% (1+ custom-themes-index) (length custom-themes)))
  (custom-load-indexed-theme))

(defun custom-load-indexed-theme ()
  (custom-try-load-theme (nth custom-themes-index custom-themes)))

(defun custom-default-theme ()
  (interactive)
  (setq custom-themes-index 0)
  (custom-load-indexed-theme))

(defun custom-try-load-theme (theme)
	(if (ignore-errors (load-theme theme :no-confirm))
			(progn (message "Currently enabled theme: '%s'" theme)
		    (mapcar #'disable-theme (remove theme custom-enabled-themes)))
		(message "Unable to find theme file for '%s'" theme)))


(global-set-key (kbd "<f2>") 'custom-cycle-theme)
(global-set-key (kbd "C-<f2>") 'custom-default-theme)

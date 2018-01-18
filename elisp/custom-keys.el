;; Custom keybinds
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-sexp)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "<f1>") 'menu-bar-open) 
(global-set-key (kbd "<f11>") 'linum-mode)
(global-set-key (kbd "<f9>") 'font-lock-mode)
(global-set-key (kbd "s-s") 'save-buffer)

;;buffer switching 
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "M-<next>") 'next-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)
(global-set-key (kbd "M-<prior>") 'previous-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)

;;window resizing
(global-set-key (kbd "<s-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<s-up>") 'enlarge-window)
(global-set-key (kbd "<s-down>") 'shrink-window)
(global-set-key (kbd "<s-right>") 'enlarge-window-horizontally)

(global-set-key (kbd "s-k") 'recompile)
(global-set-key (kbd "<f8>") 'recompile)
(global-set-key (kbd "s-S-k") 'compile)
(global-set-key (kbd "M-<f8>") 'compile)
(global-set-key (kbd "C-<f8>") 'kill-compilation)
(global-set-key (kbd "s-C-k") 'kill-compilation)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)

(add-hook 'org-mode-hook (lambda()
(local-set-key (kbd "<f7>") 'org-latex-export-to-pdf)
	(local-set-key (kbd "C-c <print>") 'org-latex-export-to-pdf)
	(local-set-key (kbd "C-<print>") 'org-latex-export-to-pdf)
	(local-set-key (kbd "M-<print>") 'org-latex-export-to-pdf)))


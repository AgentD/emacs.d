;; Custom keybinds
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-sexp)
(global-set-key (kbd "M-S-d") 'kill-sexp)
(global-set-key (kbd "<s-d>") 'kill-sexp)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "C-<f11>") 'linum-mode)
(global-set-key (kbd "<f9>") 'font-lock-mode)
(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key (kbd "<f2>") 'help)

;;buffer switching 
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "M-<next>") 'next-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)
(global-set-key (kbd "M-<prior>") 'previous-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c b") 'ibuffer)
(global-set-key (kbd "C-x C-d") 'dired)

(global-set-key (kbd "C-x 4") 'make-frame-command)

;;window resizing
(global-set-key (kbd "<s-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<s-up>") 'enlarge-window)
(global-set-key (kbd "<s-down>") 'shrink-window)
(global-set-key (kbd "<s-right>") 'enlarge-window-horizontally)

;; font resize
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)

;;disabled commands
(global-unset-key (kbd "<f3>"))
(global-unset-key (kbd "<f4>"))

;; Keys which only work in certain modes
(global-set-key (kbd "<f8>") 'recompile)
(global-set-key (kbd "M-<f8>") 'compile)
(global-set-key (kbd "C-<f8>") 'kill-compilation)


(add-hook 'org-mode-hook (lambda()
                           (local-set-key (kbd "C-c C-c") 'org-latex-export-to-pdf)))


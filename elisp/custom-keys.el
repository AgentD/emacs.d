;; Custom keybinds
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-S-w") 'backward-kill-sexp)
(global-set-key (kbd "M-S-d") 'kill-sexp)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "s-m") 'scroll-down-command)
(global-set-key (kbd "s-n") 'scroll-up-command)
(global-set-key (kbd "M-g") 'goto-line)


(global-set-key (kbd "C-<f10>") 'menu-bar-mode)
(global-set-key (kbd "<f11>") 'display-line-numbers-mode)
(global-set-key (kbd "C-<f11>") 'linum-mode)
(global-set-key (kbd "C-<f9>") 'font-lock-mode)
(global-set-key (kbd "C-<print>") 'font-lock-mode)
(global-set-key (kbd "S-<f9>") 'whitespace-mode)

(global-set-key (kbd "s-r") 'revert-buffer)
(global-set-key (kbd "<f9>") 'delete-trailing-whitespace)

(global-set-key (kbd "s-h") 'help)

;;buffer switching
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "M-<next>") 'next-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)
(global-set-key (kbd "M-<prior>") 'previous-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "<f4>") 'ibuffer)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c b") 'ibuffer)
(global-set-key (kbd "C-x C-d") 'dired)

(global-set-key (kbd "<s-tab>") 'other-window)

;;windows
(global-set-key (kbd "M-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-C-<up>") 'enlarge-window)
(global-set-key (kbd "M-C-<down>") 'shrink-window)
(global-set-key (kbd "M-C-<right>") 'enlarge-window-horizontally)

(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "C-x 4") 'make-frame-command)
(global-set-key (kbd "s-4") 'make-frame-command)

;; font resize
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)
(global-set-key (kbd "M-<f8>") 'compile)

(global-set-key (kbd "s-k") 'kill-current-buffer)
(global-set-key (kbd "C-<f4>") 'kill-current-buffer)
(global-set-key (kbd "<f3>") 'hs-minor-mode)
;;disabled commands
(global-unset-key (kbd "<f2>"))
;;(global-unset-key (kbd "<f3>"))
;;(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<insert>"))

(add-hook 'org-mode-hook (lambda()
                           (local-set-key (kbd "C-c c") 'org-latex-export-to-pdf)
                           (local-set-key (kbd "C-c C-c") 'org-latex-export-to-pdf)))
(add-hook 'dired-mode-hook (lambda()
							   (local-set-key (kbd "C-h") 'dired-omit-mode)))

(add-hook 'hs-minor-mode-hook (lambda()
								  (local-set-key (kbd "C-c t") 'hs-toggle-hiding)
								  (local-set-key (kbd "C-c S") 'hs-show-all)
								  (local-set-key (kbd "C-c H") 'hs-hide-all)
								  (local-set-key (kbd "C-c s") 'hs-show-block)
								  (local-set-key (kbd "C-c h") 'hs-hide-block)))

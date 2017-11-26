;; Custom keybinds
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-w") 'backward-kill-sexp)

(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "<f11>") 'linum-mode)
(global-set-key (kbd "<f9>") 'font-lock-mode)
(global-set-key (kbd "s-s") 'save-buffer)

;;buffer switching 
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)

;;window resizing
(global-set-key (kbd "<s-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<s-up>") 'enlarge-window)
(global-set-key (kbd "<s-down>") 'shrink-window)
(global-set-key (kbd "<s-right>") 'enlarge-window-horizontally)

(global-set-key (kbd "M-k") 'compile)
(global-set-key (kbd "<f8>") 'compile)

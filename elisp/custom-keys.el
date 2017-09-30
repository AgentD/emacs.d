;; Custom keybinds
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-w") 'backward-kill-word)

(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "<f11>") 'global-linum-mode)

;;window switching
(global-set-key (kbd "<s-iso-lefttab>") 'other-window)
(global-set-key (kbd "<backtab>") 'other-window)

;;buffer switching 
(global-set-key (kbd "<s-tab>") 'next-buffer)
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)

;;window resizing
(global-set-key (kbd "s-h") 'shrink-window-horizontally)
(global-set-key (kbd "s-j") 'enlarge-window)
(global-set-key (kbd "s-k") 'shrink-window)
(global-set-key (kbd "s-l") 'enlarge-window-horizontally)

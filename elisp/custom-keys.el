;; Custom keybinds
(global-set-key (kbd "C-c d") 'dired)
(global-set-key (kbd "s-d") 'dired)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-S-w") 'backward-kill-sexp)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-k") 'kill-whole-line)
(global-set-key (kbd "C-M-k") 'backward-kill-sentence)

;; keybind to overshadow cua-mode
(define-key cua--cua-keys-keymap (kbd "M-v") 'scroll-down-command)

(global-set-key (kbd "M-c") 'scroll-up-command)
(global-set-key (kbd "M-g") 'goto-line)
;; (global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-x SPC") 'cua-rectangle-mark-mode)
(global-set-key (kbd "<C-return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-c SPC") 'rectangle-mark-mode)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "s-y") 'undo-tree-undo)
(global-set-key (kbd "s-Y") 'undo-tree-redo)

(global-set-key (kbd "<f9>") 'delete-trailing-whitespace)
(global-set-key (kbd "<f8>") 'whitespace-mode)
(global-set-key (kbd "C-<f10>") 'menu-bar-mode)
(global-set-key (kbd "<f11>") 'display-line-numbers-mode)
(global-set-key (kbd "C-<f11>") 'linum-mode)
(global-set-key (kbd "<f12>") 'font-lock-mode)

(global-set-key (kbd "s-r") 'revert-buffer)

(global-set-key (kbd "s-h") 'help)
(global-set-key (kbd "C-c h") 'help)

;;buffer switching
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "M-<next>") 'next-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)
(global-set-key (kbd "M-<prior>") 'previous-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "C-c b") 'ibuffer)

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
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x o") 'other-frame)
;; font resize
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)

(global-set-key (kbd "s-k") 'kill-current-buffer)
(global-set-key (kbd "<f3>") 'hs-minor-mode)

;;disabled commands
(global-unset-key (kbd "<f2>"))
;;(global-unset-key (h "<f3>"))
;;(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "C-t"))
;;(global-unset-key (kbd "M-t"))

(global-set-key (kbd "C-c 1") 'shell-command)

(add-hook 'org-mode-hook (lambda()
							 (define-key org-mode-map (kbd "C-c c") 'org-latex-export-to-pdf)
							 (define-key org-mode-map (kbd "C-c C-c") 'org-latex-export-to-pdf)))

(add-hook 'hs-minor-mode-hook (lambda()
								  (local-set-key (kbd "C-t") 'hs-toggle-hiding)
								  (local-set-key (kbd "C-c S") 'hs-show-all)
								  (local-set-key (kbd "C-c H") 'hs-hide-all)
								  (local-set-key (kbd "C-c s") 'hs-show-block)
								  (local-set-key (kbd "C-c h") 'hs-hide-block)))

(add-hook 'c-mode-hook (lambda()
								  (local-set-key (kbd "C-c k") 'recompile)))


(global-unset-key (kbd "C-x C-z")) ;; disables suspend frame via keybind

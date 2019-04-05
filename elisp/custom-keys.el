;; Custom keybinds
(global-set-key (kbd "s-d") 'ido-dired)
(global-set-key (kbd "C-x C-h") 'mark-whole-buffer)
(global-set-key (kbd "C-h") 'delete-backward-char)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-k") 'kill-whole-line)
(global-set-key (kbd "C-M-k") 'backward-kill-sentence)

(global-set-key (kbd "s-p") 'cua-scroll-down)
(global-set-key (kbd "s-n") 'cua-scroll-up)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-x SPC") 'cua-rectangle-mark-mode)
(global-set-key (kbd "<C-return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-c SPC") 'rectangle-mark-mode)

(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "<f9>") 'delete-trailing-whitespace)
(global-set-key (kbd "C-<f10>") 'menu-bar-mode)
(global-set-key (kbd "C-<f11>") 'font-lock-mode)
(global-set-key (kbd "<f11>") 'whitespace-mode)
(global-set-key (kbd "C-<f12>") 'fci-mode)
(global-set-key (kbd "<f12>") 'display-line-numbers-mode)

(global-set-key (kbd "s-r") 'revert-buffer)
(global-set-key (kbd "C-c C-r") 'revert-buffer)

(global-set-key (kbd "s-h") 'help)
(global-set-key (kbd "C-c h") 'help)

(global-set-key (kbd "<prior>") 'cua-scroll-down)
(global-set-key (kbd "<next>") 'cua-scroll-up)

;;buffer switching
(global-set-key (kbd "<f6>") 'next-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "<f5>") 'previous-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "s-b") 'ibuffer)

(global-set-key (kbd "<s-tab>") 'other-window)

;;windows
(global-set-key (kbd "s-]") 'enlarge-window-horizontally)
(global-set-key (kbd "s-[") 'shrink-window-horizontally)
(global-set-key (kbd "s-'") 'enlarge-window)
(global-set-key (kbd "s-\\") 'shrink-window)

(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)

(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "C-x 4") 'make-frame-command)
(global-set-key (kbd "s-4") 'make-frame-command)
(global-set-key (kbd "M-o") 'other-window)

;; font resize
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)

(global-set-key (kbd "s-k") 'kill-current-buffer)
(global-set-key (kbd "<f3>") 'hs-minor-mode)

;;disabled commands
(global-unset-key (kbd "<f2>"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "<insertchar>"))
(global-unset-key (kbd "C-t"))
;;(global-unset-key (kbd "M-t"))

(global-set-key (kbd "C-c 1") 'eshell)

(add-hook 'org-mode-hook (lambda()
							 (local-set-key (kbd "C-c C-c") 'org-latex-export-to-pdf)))

(add-hook 'emacs-lisp-mode-hook (lambda()
							 (local-set-key (kbd "C-c C-c") 'eval-buffer)))

(add-hook 'hs-minor-mode-hook (lambda()
								  (local-set-key (kbd "C-t") 'hs-toggle-hiding)
								  (local-set-key (kbd "C-c S") 'hs-show-all)
								  (local-set-key (kbd "C-c H") 'hs-hide-all)
								  (local-set-key (kbd "C-c s") 'hs-show-block)
								  (local-set-key (kbd "C-c h") 'hs-hide-block)))

(add-hook 'c-mode-hook (lambda()
								  (local-set-key (kbd "C-c k") 'recompile)))

(global-unset-key (kbd "C-x C-z")) ;; disables suspend frame via keybind

;; custom cua-like keybinds
(defconst custom-region-alist
  `((mark-active
     ,@(let ((m (make-sparse-keymap)))
           (define-key m (kbd "C-c") 'kill-ring-save)
		   (define-key m (kbd "C-M-c") 'kill-ring-save)
           (define-key m (kbd "C-w") 'kill-region)
		   (define-key m (kbd "C-x") 'kill-region)
           m))))

(add-to-list 'emulation-mode-map-alists 'custom-region-alist)
(global-set-key (kbd "M-W") 'backward-kill-sexp)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "M-c") 'scroll-up-command)
(global-set-key (kbd "C-M-v") 'yank)

(defun match-paren (&optional arg)
  "Go to the matching parenthesis character if one is adjacent to point."
  (interactive "^p")
  (cond ((looking-at "\\s(") (forward-sexp arg))
        ((looking-back "\\s)" 1) (backward-sexp arg))
        ;; Now, try to succeed from inside of a bracket
        ((looking-at "\\s)") (forward-char) (backward-sexp arg))
        ((looking-back "\\s(" 1) (backward-char) (forward-sexp arg))))

(global-set-key (kbd "C-5") 'match-paren)
(global-set-key (kbd "C-]") 'match-paren)

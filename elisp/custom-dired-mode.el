(require 'dired-x)
(setq-default dired-omit-files "^\\...+$")
(setq-default dired-omit-mode t) ;; Turn on Omit mode.
(define-key dired-mode-map (kbd "C-h") 'dired-omit-mode)
(define-key dired-mode-map (kbd "<left>") 'dired-jump)
(define-key dired-mode-map (kbd "q") 'dired-jump)
(define-key dired-mode-map (kbd "h") 'dired-jump)
(define-key dired-mode-map (kbd "j") 'dired-next-line)
(define-key dired-mode-map (kbd "k") 'dired-previous-line)
(define-key dired-mode-map (kbd "l") 'dired-view-file)
(define-key dired-mode-map (kbd "<right>") 'dired-find-file)
(define-key dired-mode-map (kbd "<return>") 'dired-find-file)
(define-key dired-mode-map (kbd "S-<return>") 'dired-display-file)

(add-hook 'dired-load-hook '(lambda () (require 'dired-x)))
									;; Load Dired X when Dired is loaded.
(setq dired-omit-files "^\\...+$")
(setq dired-omit-mode t) ;; Turn on Omit mode.

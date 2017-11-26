(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        ))

;;(global-set-key (kbd "<f8>") 'yas-global-mode)
(require 'yasnippet)
(yas-global-mode 1)
(global-set-key (kbd "<C-tab>") 'yas-insert-snippet)
(global-set-key (kbd "<s-tab>") 'yas-insert-snippet)

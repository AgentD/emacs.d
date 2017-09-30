(require 'evil)
(evil-mode 1)

;;(require 'powerline)
;;(powerline-evil-vim-theme)
;;(require 'powerline-evil)

;; enable cua keys in evil mode
(define-key evil-insert-state-map (kbd "C-c") 'cua-copy-region)
(define-key evil-insert-state-map (kbd "C-v") 'cua-paste)
(define-key evil-insert-state-map (kbd "C-X") 'cua-cut-region)
(define-key evil-insert-state-map (kbd "C-z") 'undo-tree-undo)
(define-key evil-insert-state-map (kbd "C-y") 'undo-tree-redo)

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
			
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))

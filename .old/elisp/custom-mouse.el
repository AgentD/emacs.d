(require 'cl)

(delete-selection-mode t)

(setq mouse-drag-copy-region nil)

(setq cm-mouse-state 'none)
(setq cm-last-command 'none)

(global-set-key [(down-mouse-1)] 'cm-down-mouse-1)

(global-set-key [(mouse-1)] 'cm-mouse-1)

(global-set-key [(drag-mouse-1)] 'cm-drag-mouse-1)
(global-set-key [(double-drag-mouse-1)] 'cm-double-mouse-1)
(global-set-key [(triple-drag-mouse-1)] 'cm-double-mouse-1)

(global-set-key [(double-mouse-1)] 'cm-double-mouse-1)
(global-set-key [(triple-mouse-1)] 'cm-double-mouse-1)

(global-set-key [(down-mouse-2)] 'cm-down-mouse-2)

(global-set-key [(mouse-2)] 'cm-mouse-2)

(global-set-key [(down-mouse-3)] 'cm-down-mouse-3)

(global-set-key [(mouse-3)] 'cm-mouse-3)

(defun cm-down-mouse-1 (click)
  (interactive "e")
  (setq cm-mouse-state 'left)
  (setq cm-last-command 'none)
  (mouse-set-mark click)
  (mouse-drag-region click))


(defun cm-mouse-1 (click)
  (interactive "e")
  (setq cm-mouse-state 'none)
  (setq deactivate-mark nil)
  (if (eq cm-last-command 'none)
      (mouse-set-point click))
  (setq transient-mark-mode (cons 'only t))
  (setq cm-last-command 'none))

(defun cm-double-mouse-1 (click)
  (interactive "e")
  (setq cm-mouse-state 'none)
  (setq deactivate-mark nil)
  (if (eq cm-last-command 'none)
      (progn (mouse-set-point click)
             (cm-select-region)))
  (setq transient-mark-mode (cons 'only t))
  (setq cm-last-command 'none))


(defun cm-drag-mouse-1 (click)
  (interactive "e")
  (if (eq cm-last-command 'none)
      (mouse-set-region click))
  (cm-mouse-1 click))

(defun cm-select-region ()
  (let ((range (mouse-start-end (mark) (point) mouse-selection-click-count)))
    (setq cm-start (car range))
    (setq cm-end (nth 1 range))
    (set-mark cm-start)
    (goto-char cm-end)))

(defun cm-down-mouse-2 (click)
  (interactive "e")
  (if (eq cm-mouse-state 'left)
      (progn (setq cm-mouse-state 'left-middle)
             (if (eq cm-last-command 'paste)
                 (undo)
               (mouse-set-point click)
               (cm-select-region)
               (kill-region (mark) (point)))
             (setq cm-last-command 'cut))
    (yank)))

(defun cm-mouse-2 ()
  (interactive)
  (if (eq cm-mouse-state 'left-middle)
      (setq cm-mouse-state 'left)))

(defun cm-down-mouse-3 (click arg)
  (interactive "e\nP")
  (if (eq cm-mouse-state 'left)
      (progn
        (setq cm-mouse-state 'left-right)
        (case cm-last-command
          ('none (mouse-set-point click)
                 (cm-select-region)
                 (delete-region (mark) (point))
                 (yank arg))
          ('cut (undo)
                (set-mark cm-start)
                (goto-char cm-end)))
        (setq cm-last-command 'paste)
        (setq deactivate-mark nil)
        (activate-mark))))

(defun cm-mouse-3 (click)
  (interactive "e")
  (if (eq cm-mouse-state 'left-right)
      (setq cm-mouse-state 'left)
    (cm-search click)))

(defun header-line-active-p ()
  (not (null header-line-format)))

(defun move-mouse-to-point ()
  (let* ((coords (posn-col-row (posn-at-point)))
	 (window-coords (window-inside-edges))
	 (x (+ (car coords) (car window-coords) -1))
	 (y (+ (cdr coords) (cadr window-coords)
	       (if (header-line-active-p)
		   -1
		 0))))
    (set-mouse-position (selected-frame) x y)))

(defun cm-highlight-search (sym)
  (set-mark (point))
  (search-backward sym nil t)
  (exchange-point-and-mark))

(defun cm-search (posn)
  (let ((sym (if (region-active-p)
                 (buffer-substring (mark) (point))
               (mouse-set-point posn)
               (thing-at-point 'filename))))
    (if (file-readable-p sym)
        (special-display-popup-frame (find-file-noselect sym nil nil nil))
      (if (search-forward sym nil t)
          (cm-highlight-search sym)
        (let ((saved-point (point)))
          (message "Wrapped mouse search")
          (goto-char (point-min))
          (if (search-forward sym nil t)
              (cm-highlight-search sym)
            (goto-char saved-point)))))
    (unless (posn-at-point)
      (universal-argument)
      (recenter))
    (move-mouse-to-point)))

(provide 'cm-mouse)

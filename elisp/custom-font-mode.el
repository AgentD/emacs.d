(defun medium-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"xft:-uw-ttyp0-medium-r-normal--13-*-75-75-c-*-iso10646-1")
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--13-*-75-75-c-*-iso10646-1"
						nil t))

(defun default-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"xft:-uw-ttyp0-medium-r-normal--16-*-75-75-c-*-iso10646-1")
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--16-*-75-75-c-*-iso10646-1"
						nil t))

(defun dejavu-font ()
	(interactive)
		(set-face-attribute 'default t :font
						"DejaVu Sans Mono:pixelsize=14" )
		(set-frame-font "DejaVu Sans Mono:pixelsize=14" nil t))
(defun dejavu-font-large ()
	(interactive)
		(set-face-attribute 'default t :font
						"DejaVu Sans Mono:pixelsize=16" )
		(set-frame-font "DejaVu Sans Mono:pixelsize=16" t))

(defun large-font ()
	(interactive)
	(set-face-attribute 'default t :font
						"xft:-uw-ttyp0-medium-r-normal--18-*-75-75-c-*-iso10646-1" )
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--18-*-75-75-c-*-iso10646-1" nil t))

(global-set-key (kbd "M-<f9>") 'medium-font)
(global-set-key (kbd "<f7>") 'default-font)
(global-set-key (kbd "<f8>") 'large-font)
(global-set-key (kbd "M-<f7>") 'dejavu-font)
(global-set-key (kbd "M-<f8>") 'dejavu-font-large)

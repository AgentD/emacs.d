(defun small6x13-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso10646-1")
	(set-frame-font "-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso10646-1"
						nil t))
(defun small-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"xft:-uw-ttyp0-medium-r-normal--14-*-75-75-c-*-iso10646-1")
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--14-*-75-75-c-*-iso10646-1"
						nil t))

(defun default-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"xft:-uw-ttyp0-medium-r-normal--16-*-75-75-c-*-iso10646-1")
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--16-*-75-75-c-*-iso10646-1"
						nil t))

(defun large-font ()
	(interactive)
	(set-face-attribute 'default t :font
					"xft:-uw-ttyp0-medium-r-normal--18-*-75-75-c-*-iso10646-1")
	(set-frame-font "xft:-uw-ttyp0-medium-r-normal--18-*-75-75-c-*-iso10646-1"
						nil t))

(defun dejavu-font ()
	(interactive)
		(set-face-attribute 'default t :font
						"DejaVu Sans Mono:pixelsize=14" )
		(set-frame-font "DejaVu Sans Mono:pixelsize=14" nil t))

(global-set-key (kbd "<f6>") 'small-font)
(global-set-key (kbd "M-<f6>") 'small6x13-font)
(global-set-key (kbd "<f7>") 'default-font)
(global-set-key (kbd "<f8>") 'large-font)
(global-set-key (kbd "M-<f8>") 'dejavu-font)

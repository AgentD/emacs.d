# emacs.d

## Install 

	$ git clone git://github.com/Minato4869/emacs.d ~/.emacs.d
	$ cd ~/.emacs.d
	$ mkdir backup autosave /* important */

## Custom Keybinds
	C = Control
	M = Meta
	s = Super
	S = Shift
### Editing/Movement
	C-h	Delete the previous character, or the text in the region if it 
		is active. 
	C-w	Delete the previous balanced expression.
	M-p	Move back to the previous paragraph beginning.
	M-n 	Move forwardd to the next paragraph end.
### Buffer switching
	F6; M-PgUp, C-PgUp	Select the next buffer in the buffer list.
	F5; M-PgDn, C-PgDn	Select the previous buffer in the buffer list.
### Window resize
	s-Left	Makes the current window narrower.
	s-Up	Makes the current window taller.	 
	s-Down  Makes the current window smaller.
	s-Right Makes the current window wider.
### Compilation
	s-k, F8		Run a compiler asynchronously under Emacs, with error 
			messages going to the *compilation* buffer.
	s-S-k, M-F8       Invoke a compiler with the same command as in the last
			invocation of 'compile'.
	C-F8, s-C-k	Kill the running compilation subprocess.
### Org-Mode
	F7, C-c PrtSc, M-PrtSc	Export as LaTeX and then process to PDF.
### Miscellaneous
	F1	Opens the menu bar
	F11	Toggles Line Numbers in the current buffer.
	F12	Toggles the Fill-Column-Indicator in the current buffer.
	s-S 	Saves the current buffer.

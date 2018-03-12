# emacs.d

## Install 

	$ git clone git://github.com/Minato4869/emacs.d ~/.emacs.d
	$ cd ~/.emacs.d
	$ mkdir backup autosave

## Usage
### GUI:
Use:
	$ emacsclient -nc
	or
	$ emacsclient -nc --alternate-editor=""

### Terminal:
Use: 
	$ emacs -nw -Q -l ~/.emacs.d/term_init.el
   	or
	$ emacsclient -nw --alternate-editor=""

## Custom Keybinds
	C = Control
	M = Meta
	s = Super
	S = Shift
### Editing/Movement
	C-h	Delete the previous character, or the text in the region if it 
		is active. 
	C-w	Delete the previous balanced expression.
	s-d, M-S-d Delete the current balanced expression
    M-p	Move back to the previous paragraph beginning.
	M-n Move forward to the next paragraph end.
### Buffer switching
	F6; M-PgUp, C-PgUp	Select the next buffer in the buffer list.
	F5; M-PgDn, C-PgDn	Select the previous buffer in the buffer list.
    C-c b, C-x C-b  Toggles ibuffer.
### Window resize
	s-Left	Makes the current window narrower.
	s-Up	Makes the current window taller.	 
	s-Down  Makes the current window smaller.
	s-Right Makes the current window wider.
### Compilation
	F8		Run a compiler asynchronously under Emacs, with error 
	messages going to the #compilation# buffer.
	M-F8       Invoke a compiler with the same command as in the last
	invocation of 'compile'.
	C-F8	Kill the running compilation subprocess.
### Org-Mode
	C-c C-c Export as LaTeX and then process to PDF.
### Miscellaneous
	C-x C-d Toggles dired.
    s-Return Spawns urxvt from the current buffer-directory (see ./elisp/custom-terminal-mode.el 
    C-F11	Toggles Line Numbers in the current buffer.
	F12	Toggles the Fill-Column-Indicator in the current buffer.
	s-S 	Saves the current buffer.
	C-=	Increase font size.
	C--	Decrease font size.
	C-0	Reset font size.

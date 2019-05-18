# emacs.d

## Install

	$ git clone git://github.com/Minato4869/emacs.d ~/.emacs.d
	$ cd ~/.emacs.d
	$ mkdir backup autosave

## Usage
### GUI:
Use
	$ emacsclient -nc --alternate-editor=""

### Terminal:
Use:

	$ emacs -nw -Q -l ~/.emacs.d/term_init.el

or

	$ emacsclient -nw --alternate-editor=""

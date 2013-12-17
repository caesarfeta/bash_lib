# bash\_lib
## A collection of useful BASH functions
### How To Use
Clone this repository into the desired directory.

Add the following bit of code to your BASH scripts after your variable definitions replacing $DIR with the path to this library.

	for f in $(ls $DIR/lib/)
		do source $DIR/lib/$f
	done

### snippets.sh
This file contains useful snippets of BASH code that aren't stand-alone functions but can be copy and pasted into your scripts as needed.

### ./scripts
This directory stores scripts I find handy.  To use just add to your PATH.

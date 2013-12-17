# bash\_lib
## A collection of useful BASH functions, scripts, snippets, etc.
### How To Use
Clone this repository into the desired directory, ~/lib/bash_lib perhaps.

Add the following to your BASH scripts after your variable definitions replacing $DIR with the desired directory.

	for f in $(ls $DIR/lib/)
		do source $DIR/lib/$f
	done

### ./lib
Reusable bash functions.

### ./scripts
Handy scripts.
To use add to your PATH.

## ./tmpl
Script boilerplates.

### profile
Non-sensitve bash config.  
Source it your personal bash profile, ~/.profile typically.

### snippets.txt
Useful snippets of BASH code that aren't stand-alone functions but must be copy and pasted into scripts.

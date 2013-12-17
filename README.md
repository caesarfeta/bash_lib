# bash\_lib
## A collection of useful BASH functions, scripts, snippets, etc.
### How To Use
Clone this repository into the desired directory, ~/lib/bash_lib perhaps.

Add the following bit of code to your BASH scripts after your variable definitions replacing $DIR with the desired directory.

	for f in $(ls $DIR/lib/)
		do source $DIR/lib/$f
	done

### profile
This is where I keep my non-sensitve bash config.  
I just source it in my personal .profile.
It contains my terminal color preferences and handy command aliases.

### snippets.txt
This file contains useful snippets of BASH code that aren't stand-alone functions but can be copy and pasted into scripts as needed.

### ./scripts
This directory stores scripts I find handy.
To use just add to your PATH.

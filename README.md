# bash\_lib
###A collection of useful BASH configuration, functions, scripts & snippets

## How To Use
	git clone http://github.com/caesarfeta/bash_lib ~/lib/bash_lib

Add the following line to ~/.profile.

	source ~/lib/bash_lib/profile

## ./lib
Reusable bash functions helpful when writing your own scripts.

Add the following to your BASH scripts after your variable definitions replacing $DIR with the desired directory.

	for f in $(ls $DIR/lib/)
		do source $DIR/lib/$f
	done

## ./scripts
Handy scripts I use for coding / project management.

## ./tmpl
Script boilerplates.

## profile
Non-sensitve bash config.  

## gitconfigPlus
Git specific aliases.
Include it in your git config file.
This only works if you have Git 1.7+
Add these lines to  ~/.gitconfig

	[include]
	    path = ~/lib/bash_lib/gitConfigPlus

## snippets.txt
Useful snippets of BASH code that aren't stand-alone functions but can be copied and pasted into scripts.

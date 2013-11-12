#!/bin/bash

##-------------------------------------------------------------
##  writeConfig() -- Simple templating
##
##	Replace all instances of ${VAR} with the value of $VAR
##
##  @param {string} The path to the template file
##  @param {string} The output file
##-------------------------------------------------------------
function writeConfig() {
	> $2  # Clobber output file
	while read line ; do
	    while [[ "$line" =~ '(\$\{[a-zA-Z_][a-zA-Z_0-9]*\})' ]] ; do
	        LHS=${BASH_REMATCH[1]}
	        RHS="$(eval echo "\"$LHS\"")"
	        line=${line//$LHS/$RHS}
	    done
	    echo $line >> $2
	done < $1
}
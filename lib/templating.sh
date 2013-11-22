#!/bin/bash

##-------------------------------------------------------------
##  writeConfig() -- Simple templating
##
##	Replace all instances of ${VAR} with the value of $VAR
##
##  @param {string} The path to the template file
##  @param {string} The output file
##
##  Be careful the output file gets totally overwritten.
##-------------------------------------------------------------
function writeConfig() {
	source /tmp/bashlibvars
	> $2  # Clobber output file
	while read line ; do
	    while [[ "$line" =~ (\$\{[a-zA-Z_][a-zA-Z_0-9]*\}) ]] ; do
	        LHS=${BASH_REMATCH[1]}
			if [ -n $LHS ]
				then
					RHS="$(eval echo "\"$LHS\"")"
					line=${line//$LHS/$RHS}
			fi
	    done
	    echo $line >> $2
	done < $1
}

##-------------------------------------------------------------
##  writeManual() -- Simple templating useful for turning
##  admin scripts into something resembling documentation.
##
##	Replace all instances of $VAR with the value of $VAR
##
##  @param {string} The path to the template file
##-------------------------------------------------------------
function writeManual() {
	source /tmp/bashlibvars
	while read line ; do
	    while [[ "$line" =~ (\$\{*[a-zA-Z_][a-zA-Z_0-9]*\}*) ]] ; do
	        LHS=${BASH_REMATCH[1]}
			if [ -n $LHS ]
				then
					RHS="$(eval echo "\"$LHS\"")"
					line=${line//$LHS/$RHS}
			fi
	    done
	    echo $line
	done < $1
}
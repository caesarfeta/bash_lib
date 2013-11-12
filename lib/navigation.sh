#!/bin/bash

##-------------------------------------------------------------
##  SCRIPT_DIR -- Running script's absolute path
##
##	Often you will want to know the absolute path of the
##  running script so you can use relative paths in your
##  command statements.  This isn't a function but a variable.
##  Use like so...
##  	$SCRIPT_DIR/child/path
##      $SCRIPT_DIR/../sibling/path
##-------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#!/bin/bash

##-------------------------------------------------------------
##  nocomm() -- strip comments from XML
##
##  @param {string} The path to the XML file
##-------------------------------------------------------------
function nocoxml() {
	source /tmp/bashlibvars
	sed '/<!--/,/-->/d' $1
}
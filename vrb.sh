#!/bin/sh
#variable_name=variable_value
Name="syeda employee"
echo $Name
unset Name
Name="upasana"
#unset Name
echo Name


#$0
# $1....9
# $#
# $*
# $@
# $?
# $$

echo "file name: $0"
echo "first parameter: $1"
echo "second parameter: $2"
echo "quoted value: $@"
echo "quoted values: $*"
echo "no of parameters: $#"


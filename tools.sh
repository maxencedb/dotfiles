#!/bin/sh
#
# This files contains general purpose tools for
# subsequent scripts.

# Exit program with a specified error message and output
exit_on_error()
{
    local MSG=${1:-An unknown error occured}
    local NUM=${2:-1}
    1>&2 echo "Error: $MSG"
    exit $NUM
}

# Test for a binary using the type builtin
test_binary()
{
    type $1 >/dev/null 2>&1
}



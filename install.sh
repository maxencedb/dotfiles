#!/bin/sh

# Global variables
ROOT_PATH=$(dirname "$(readlink -f "$0")")
SCRIPT_PATH=$ROOT_PATH/scripts
FILE_PATH=$ROOT_PATH/files

# Source shell tools
source $ROOT_PATH/tools.sh

# Test if script directory exists
if [ ! -d "$SCRIPT_PATH" ]
then
    exit_on_error "script directory not found"
fi

echo "Launching all install scripts ..."

# Loop on all shell scripts and source them
for script in $(ls $SCRIPT_PATH | grep -E ".+\.sh$")
do
    echo "### $script"
    . $SCRIPT_PATH/$script
done

echo "Done"

exit 0


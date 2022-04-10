#!/bin/sh

# MAKE SURE INPUT TAR IS MAPPED INTO THE CONTAINER
if ! test -d /edit; then
    echo "Input not mapped! Exiting..."
    exit 1
fi

# DEFINE FILE LOCATIONS
ORIGINAL="/edit/"$1
EDITABLE="/tmp/"$(basename ${ORIGINAL})

# START EDITING
cp $ORIGINAL $EDITABLE
/usr/bin/vim $EDITABLE

# IF FILE WAS MODIFIED, COPY EDITED TO DESTINATION
if ! cmp -s $ORIGINAL $EDITABLE; then
    mv $EDITABLE $ORIGINAL
fi

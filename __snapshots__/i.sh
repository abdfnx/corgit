#!/bin/bash

UNAME=$(uname)
cgitUrl=https://raw.githubusercontent.com/Dev-x-Team/corgit/main/__snapshots__/i.sh

successInstall() {
    echo -e "corgit was installed successfully 🤩, type cgit -h"
}

if [[ "$UNAME" == Linux || "$UNAME" == "Darwin" ]]; then
    if [ -x "$(command -v sudo)" ]; then
        sudo cp $cgitUrl ~/tests
    else
        cp $cgitUrl ~/tests
    fi

    successInstall

elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
    cp $cgitUrl /usr/bin

    successInstall

else
    echo "😕, Unidentified system..."
    echo -e "support abdfnx to add corgit to this system"
fi

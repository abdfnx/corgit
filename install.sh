#!/bin/bash

UNAME=$(uname)
cgitUrl="https://raw.githubusercontent.com/Dev-x-Team/corgit/main/cgit"

successInstall() {
    echo -e "corgit was installed successfully 🤩, type cgit -h"
}

if [[ "$UNAME" == Linux || "$UNAME" == "Darwin" ]]; then
    if [ -x "$(command -v sudo)" ]; then
        sudo cp $cgitUrl /usr/local/bin
    else
        cp $cgitUrl /usr/local/bin
    fi

    successInstall

elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
    cp $cgitUrl /usr/bin

    successInstall

else
    echo "😕, Unidentified system..."
    echo -e "support abdfnx to add corgit to this system"
fi

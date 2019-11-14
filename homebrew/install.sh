#!/bin/sh
#
#
# This install some of the commone depdencies needed (/wanted)
# for using HomeBrew

#Check for HomeBrew
if test ! $(which brew)
then

    echo "  Installing Homebrew for you."

    # Install based on OS
    if test "$(uname)" = "Darwin"
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
fi

exit 0

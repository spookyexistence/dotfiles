#!/bin/sh
#
# install https://github.com/pimterry/notes

source "$DOTFILES/bin/prompt"
if [ ! -d "/usr/local/bin/notes" ]
then
    info "Installing notes..."
    curl https://raw.githubusercontent.com/pimterry/notes/latest-release/notes > /usr/local/bin/notes && chmod +x /usr/local/bin/notes
fi

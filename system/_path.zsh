if ["$(uname -s)" == "Darwin"]
then
    export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
else
    export PATH="./bin:/usr/local/bin:$HOME/.local/bin"
fi

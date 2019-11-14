DOTFILES="$HOME/.dotfiles"
source "$DOTFILES/bin/prompt"

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    info "--> Installing 'oh-my-zsh..."
    export ZSH="$HOME/.oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended --silent
    mv ~/.zshrc "$DOTFILES/zsh/oh-my-zshrc"
    sh "$DOTFILES/oh-my-zsh/install.sh"
else
    if [ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]
    then
        info "--> Installing 'zsh-syntax-highlighting..."
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH/custom/plugins/zsh-syntax-highlighting"
        success 'zsh-syntax-highlighting'
    fi

    if [ ! -d "$ZSH/custom/plugins/zsh-autosuggestions" ]
    then
        info "--> Installing 'zsh-autosuggestions..."
        git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH/custom/plugins/zsh-autosuggestions"
        success 'zsh-autosuggestions'
    fi

    if [ ! -d "$ZSH/customs/themes/spaceship-prompt" ]
    then
        info "--> Installing 'spaceship-prompt..."
        git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt"
        ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
        success 'spaceship-prompt'
    fi
fi

#!/bin/bash -e

cd $HOME

# backup .zshrc if already exist
if [ -f $HOME/.zshrc ]; then
	mv $HOME/.zshrc $HOME/.zshrc.bak.$(date "+%Y.%m.%d-%H:%M:%S")
fi

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# clone the script
rm -rf ~/myZsh
git clone https://github.com/engine210/myZsh.git ~/myZsh

# install oh-my-zsh plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/

# edit .zshrc ( commend here, use copy .zshrc instead )
# sed -i 's/^ZSH_THEME=.*/ZSH_THEME="fishy"/g' ~/.zshrc
# sed -i 's/^plugins=.*/plugins=(\n\tgit\n\tapple\n\tbanana\n)/g' ~/.zshrc

cp .zshrc ~/.zshrc

exec zsh
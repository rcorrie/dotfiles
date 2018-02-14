#!/bin/bash

# Install homebrew - https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zsh - https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
brew install zsh zsh-completions

# Install oh-my-zsh - 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install tmux
brew install tmux
ln -s ~/dotfiles/.tmux-conf ~/.tmux-conf

# Install nvm - https://github.com/creationix/nvm#installation
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Install neovim (nvim) - https://github.com/neovim/neovim/wiki/Installing-Neovim
brew install neovim
echo '# nvim path' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.zshrc

if [ ! -d ~/.config ]; then
	mkdir ~/.config;
	ln -s ~/dotfiles/nvim ~/.config/nvim;
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install zsh-syntax-highlighting
brew install zsh-syntax-highlighting
echo '# zsh-syntax-highlighting path' >> ~/.zshrc
echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters' >> ~/.zshrc

# dotfiles

Nothing fancy right now.

    cd ~
    git clone https://github.com/tylerpeterson/dotfiles.git .dotfiles
    ln -s ~/.dotfiles/zshrc .zshrc
    ln -s ~/.dotfiles/p10k.zsh .p10k.zsh
    ln -s ~/.dotfiles/bashrc .bashrc
    ln -s ~/.dotfiles/bashrc.d .bashrc.d

    # set up vim
    ln -s ~/.dotfiles/vimrc .vimrc
    ln -s ~/.dotfiles/vim .vim
    mkdir -p ~/dev/alien
    git clone https://github.com/junegunn/vim-plug.git ~/dev/alien/vim-plug
    ln -s ~/dev/alien/vim-plug/plug.vim ~/.vim/autoload
    # launch vim and run :PlugInstall

    # Set up zsh
    touch ~/.zsh-named-directories

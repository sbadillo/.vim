# To remake this

Move .vimrc to a .vim folder

    mv .vimrc ~/.vim/vimrc

Create symbolic links:

    ln -s ~/.vim/vimrc/.vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim

Make folder for Pathogen and download Pathogen
    
    mkdir -p ~/.vim/autoload ~/.vim/bundle 
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

There are a couple of lines that you should add to your .vimrc file to activate pathogen.

    execute pathogen#infect()

To install a new plugin, it is good to keep them in git submodules:
Example to install nerd tree. 

    submodule add https://github.com/scrooloose/nerdtree bundle/nerdtree
    git add .
    git commit -m "Install Fugitive.vim bundle as a submodule."()

All cool plugins can be found in Vimawesome.com


# To install this vim environment in different machine

    cd ~
    git clone http://github.com/username/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update

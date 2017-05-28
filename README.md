# To remake this

Move .vimrc to a .vim folder


    mv .vimrc ~/.vim/vimrc

Create symlinks:

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


# To isntall this vim environment in different machine

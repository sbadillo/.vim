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

	call pathogen#runtime_append_all_bundles()
	call pathogen#helptags()


    git submodule init
    git submodule update



Instruction as found in http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

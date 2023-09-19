git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

src=`dirname $0`
echo $src

cp $src/vimrc ~/.vimrc
echo -e "Open vim and execute the following:\n:PluginInstall\n:GoInstallBinaries"

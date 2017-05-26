Repo containing my default dotfiles for OSX.

* vim
* tmux
* bash
* git

For git-aware-prompt follow these steps:

mkdir ~/.bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git

For vim config follow these steps:

mkdir -p ~/.vim/.autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

open vim and run
:PlugInstall

from Terminal,
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer --gocode-completer --tern-completer

Do print avaialble term colors and their names in Terminal:
for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
done

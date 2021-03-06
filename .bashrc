export VISUAL=vim
export EDITOR="$VISUAL"

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="\u@\h \W\n\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export GOPATH=~/Code/Go
export PATH=$PATH:$GOPATH/bin

eval "$(thefuck --alias)"

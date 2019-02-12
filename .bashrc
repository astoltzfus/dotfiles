export PATH=/usr/local/sbin:$PATH

source ~/git-completion.bash

# node stuff
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# ====== Aliases ======
alias bashrc='source ~/.bashrc' # reload bashrc 
alias bashp='source ~/.bash_profile' # reload bash_profile 
 
alias v='vim' 
alias ..='cd ..;ls' 
alias ...='cd ../../;ls' 
 
alias la='ls -a' 
alias ll='ls -al' 
alias ls='ls -aFG' # color and filetype 
alias lx='ls -lXB' # sort by extension 
alias lt='ls -ltr' # sort by date 
 
alias glog='git log --name-status --graph --pretty=format:"%C(bold red)%h%Creset -%C(yellow)%d%Creset %s %C(yellow)-%Creset %C(bold blue)%an%Creset %C(bold green)(%cr)%Creset"' 
alias glob='git log --name-status --graph --no-merges master.. --pretty=format:"%C(bold red)%h%Creset -%C(yellow)%d%Creset %s %C(yellow)-%Creset %C(bold blue)%an%Creset %C(bold green)(%cr)%Creset"' 
alias gs='git status' 
alias gd='git diff' 
alias gaa='git add -A; git status' 
alias gcam='git commit -a -m' 
alias gh='git stash' 
alias ghp='git stash pop' 
alias gpom='git pull origin master' 
alias gundo='git reset HEAD~' # undo last git commit 
alias gclean='git checkout master; git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d' 
 
alias npmls="npm list | pbcopy | echo '=> NPM Package List copied to clipboard.'" 
alias npmrm="rm -rf node_modules/" 
 
# Copy public key to clipboard 
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard.'" 

# ====== Colors =====

# set prompt
NO_COLOR="\[\033[0m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
RED='\[\033[0;31m\]'
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
YELLOW="\[\033[0;33m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
function prompt_command () {
  branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ "$branch" == "" ]; then
    export PS1="$CYAN\u:$GREEN\W$NO_COLOR "
  else
    export PS1="$CYAN\u:$GREEN\W[$RED$branch$GREEN]$NO_COLOR "
  fi
}
PROMPT_COMMAND=prompt_command
export CLIOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxCxDxBxegedabagacad

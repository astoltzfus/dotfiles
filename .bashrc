# ALIASES
alias bashrc='source ~/.bashrc' # reload bashrc
alias bashp='source ~/.bash_profile' # reload bash_profile

alias v='vim'
alias ..='cd ..;ls'
alias ...='cd ../../;ls'

alias la='ls -a'
alias ls='ls -aFG' # color and filetype
alias lx='ls -lXB' # sort by extension
alias lt='ls -ltr' # sort by date

alias glog='git log --name-status --graph --pretty=format:"%C(bold red)%h%Creset -%C(yellow)%d%Creset %s %C(yellow)-%Creset %C(bold blue)%an%Creset %C(bold green)(%cr)%Creset"'
alias gs='git status'
alias gaa='git add -A; git status'

# Copy public key to pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

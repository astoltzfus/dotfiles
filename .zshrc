export PATH=/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias v='vim' 
alias zshrc='source ~/.zshrc'
alias vzshrc='v ~/.zshrc'
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
alias gf='git fetch'
alias gaa='git add -A; git status' 
alias gcam='git commit -a -m' 
alias gh='git stash' 
alias gha='git stash --include-untracked'
alias ghl='git stash list' 
alias ghp='git stash pop' 
alias gpom='git pull origin master' 
alias gpod='git pull origin develop' 
alias gundo='git reset HEAD~' # undo last git commit 
alias gcpl='git checkout package-lock.json; gs'
alias gclean='git checkout master; git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d' 
alias grdev='git reset --hard origin/develop'
alias gbr="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"
 
alias npmls="npm list | pbcopy | echo '=> NPM Package List copied to clipboard.'" 
alias npmrm="rm -rf node_modules/" 

alias ngrok="~/ngrok http --host-header=rewrite 8080"
 
alias weather="curl 'http://wttr.in/indianapolis?format=3'"

# Copy public key to clipboard 
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard.'" 


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

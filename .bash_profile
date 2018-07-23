# nvm
if [[ -s $HOME/.nvm/nvm.sh ]]; then source $HOME/.nvm/nvm.sh ; fi

# list
alias ll='ls -la'

# git completion
source $HOME/.git-completion.bash

# git prompt
source $HOME/.git-prompt.sh

GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWSTASHSTATE=1

export PS1='\[\e[0;37m\e[40m\]\u\[\e[0m\]:\[\e[0;96m\e[40m\]\w\[\e[1;92m\e[40m\]$(__git_ps1)\[\e[0m\]$ '

# overwrite git setting
alias mygit='git config user.name kzhrk && git config user.email info@kzhrk.com'

# chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# android 
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# npm completion
source ~/.bash_npm_completion

# svn delete all
alias svn-del-all="svn st | grep '^!' | awk '{ print $2 }' | xargs svn delete"

# sp wget
alias spwget="wget --user-agent='Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1'"

# git diff archive
git_diff_archive() {
  local diff=""
  local h="HEAD"
  if [ $# -eq 1 ]; then
    if expr "$1" : '[0-9]*$' > /dev/null ; then
      diff="HEAD~${1} HEAD"
    else
      diff="${1} HEAD"
    fi
  elif [ $# -eq 2 ]; then
    diff="${2} ${1}"
    h=$1
  fi
  if [ "$diff" != "" ]; then
    diff="git diff --diff-filter=d --name-only ${diff}"
  fi
  git archive --format=zip --prefix=root/ $h `eval $diff` -o archive.zip
}

# python http
alias pserver="python -m SimpleHTTPServer 8000"

# listen list
alias listens="sudo lsof -i -P | grep \"LISTEN\""

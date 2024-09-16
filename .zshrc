# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
if [[ -s $HOME/.nvm/nvm.sh ]]; then source $HOME/.nvm/nvm.sh ; fi

# list
alias ll='ls -la'

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}kzhrk%f: %F{cyan}%~%f %F{green}$(__git_ps1 "(%s)")%f$ '

# python http
alias pserver="python -m SimpleHTTPServer 8000"

# docker
alias dc="docker-compose"

# direnv
eval "$(direnv hook zsh)"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

alias cpbr="git rev-parse --abbrev-ref HEAD | pbcopy"
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pserver
alias pserver="python3 -m http.server 8000"

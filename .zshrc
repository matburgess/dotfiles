if [ "$TMUX" = "" ]; then tmux; fi

# General
alias zrc='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias trc='vim ~/.tmux.conf'
alias ll='ls -lahFG'
alias ls='ls -lahG'
alias ld='ls -ldG */'
alias c='clear'
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

## Navigation
alias ~='cd ~'
alias ..='cd ..'

## Python
alias python='python3'
alias rn='python main.py'
alias venv='python3 -m venv $PWD'
alias ae='source ./bin/activate'

## Git
alias gh='alias | grep git'
alias ga='git add'
alias ga.='git add .'
alias gfa='git fetch --all'
alias gpfwl='git push --force-with-lease'
alias gcom='git checkout master'
alias gum='git checkout master && git fetch --all && git pull'
alias gs='git status'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gb='git branch'
alias gnb='git checkout -b'
alias gco='git checkout'
alias gbd='git branch -d'
alias gp='git pull --rebase'
alias gst='git stash'

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# Git autocompletion
autoload -Uz compinit && compinit


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{cyan}(%b)%f'
  
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{magenta}%n%f ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

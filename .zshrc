# General
alias zrc='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias trc='vim ~/.tmux.conf'
alias ll='ls -la'
alias ld='ls -ld /*'
alias c='clear'

## Navigation
alias ~='cd ~'
alias ..='cd ..'

## Python
alias python='python3'
alias rn='python main.py'
alias venv='python3 -m venv $PWD'
alias ae='source ./bin/activate'

## Git
alias ga='git add'
alias ga.='git add .'
alias gfa='git fetch --all'
alias gpfwl='git push --force-with-lease'
alias gs='git status'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gb='git branch'
alias gnb='git checkout -b'
alias gco='git checkout'
alias gbd='git branch -d'

## Prompt
#Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{cyan}(%b)%f'
 
# Set up the prompt (with git branch name)
export PROMPT='%B%F{magenta}%1~%f%b %# '
alias config='/usr/bin/git --git-dir=/Users/mtb/.cfg --work-tree=/Users/mtb'

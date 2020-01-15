# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

alias df='df -h'                          # human-readable sizes
alias grep='grep --colour=auto'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev/workspace
source /usr/bin/virtualenvwrapper.sh

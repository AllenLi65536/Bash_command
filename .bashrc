#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTSIZE=3000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\C-k": kill-whole-line'

#export PS1='\e[00;36m[\u@\h \W]\$ \e[00m'
#Set only once and the setting will be lasting
#export PROMPT_COMMAND="history -a; history -c; history -r $PROMPT_COMMAND"

echo -e "\e[00;35m$(fortune | cowsay -f $(find /usr/share/cows -type f | shuf -n 1))\e[00m" 

shopt -s histappend

alias ls='ls --color=auto'
alias la='ls -al'

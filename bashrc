# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

bind '"\ep": history-search-backward'
bind '"\en": history-search-forward'

export PATH=${HOME}/.local/bin:${HOME}/node_modules/.bin:${PATH}
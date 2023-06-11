#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export PATH="$PATH:$HOME/.local/bin"
export BAT_THEME="Catppuccin-mocha"
export LD_LIBRARY_PATH=/usr/local/lib
alias ls='exa --icons --grid'
alias tree='exa --tree --icons'
alias xev=$HOME/.config/sxhkd/xev-keys.sh
alias uwu="cowsay uwu && sudo"
alias pacman='sudo pacman'
alias {:q,q!,:q!}='exit'
alias la='ls -a'
alias ll='ls -l'
#alias sudo='sudo -p "  "'

#alias vim="nvim"
#PS1='[\u@\h \W]\$ '

export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;13m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"


alias i3lock='$HOME/.config/i3/lock.sh'

# startup
#pokemon-colorscripts -r --no-title
if [ "$TERM" = "xterm-kitty" ]; then
	fish
else
	catfetch
fi

# tty colors
if [ "$TERM" = "linux" ]; then
	$HOME/.tty/cat_mocha.sh
	nitch
fi

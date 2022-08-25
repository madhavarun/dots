#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/.local/bin"
export BAT_THEME="Catppuccin-mocha"
alias ls='ls --color=auto'
alias xev=$HOME/.config/sxhkd/xev-keys.sh
alias uwu=sudo

#alias vim="nvim"
#PS1='[\u@\h \W]\$ '

export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;13m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# startup
#pokemon-colorscripts -r --no-title
if [ "$TERM" = "alacritty" ]; then
	alias i3lock='$HOME/.config/i3/lock.sh'
#	fish
fi

# tty colors
if [ "$TERM" = "linux" ]; then
	$HOME/.tty/cat_mocha.sh
fi

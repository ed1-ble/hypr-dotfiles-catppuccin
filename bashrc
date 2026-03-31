# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#themeName='kali'
#eval "$(oh-my-posh init bash --config $themeName)"

export PS1='┌──\[\e[34m\]\[\e[0m\]\[\e[44m\] ㉿ \u \[\e[0m\]\[\e[47m\]\[\e[34m\]\[\e[0m\]\[\e[47m\]\[\e[30m\] \[\e[0m\]\[\e[100m\]\[\e[37m\]\[\e[0m\]\[\e[100m\]\[\e[97m\] \w \[\e[0m\]\[\e[90m\]\[\e[0m\]
└──$ '

#PS1=" \[\033[33m\]❯ "

export PREFIX="$HOME/Projects/osdev/tet-os/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

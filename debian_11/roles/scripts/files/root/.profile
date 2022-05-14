if [ -d "/opt/bin" ]; then
    export PATH="/opt/bin:${PATH}"
fi

if [ -d "${HOME}/bin" ]; then
    export PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/.local/bin" ]; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

alias mc='. /usr/lib/mc/mc-wrapper.sh'
alias m="mc"
alias me="mcedit"
alias ll="ls -l"
alias la="ls -la"
alias l="ll"

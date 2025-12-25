# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi


# my
if [ -d "/opt/bin" ]; then
    PATH="/opt/bin:${PATH}"
fi

if [ -d "${HOME}/bin" ]; then
    PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/.local/bin" ]; then
    PATH="${HOME}/.local/bin:${PATH}"
fi

alias mc=". /usr/lib/mc/mc-wrapper.sh"
alias m="mc"
alias me="mcedit"
alias ll="ls -l"
alias la="ls -la"
alias l="ll"
# End my

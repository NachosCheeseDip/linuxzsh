# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' menu select
zmodload zsh/complist

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ls='ls --color'
alias f='neofetch'
alias please='sudo'




autoload -Uz colors && colors
PROMPT='%B%F{yellow}%c%f %F{cyan}>%f%b '
RPROMPT='%B%U%F{white}%d%f%u%b'

#This will load syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#This set the default text editor
export EDITOR=/usr/bin/vim

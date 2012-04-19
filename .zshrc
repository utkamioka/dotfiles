echo .zshrc
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kami/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}
%{${fg[cyan]}%}%n@%m%{${reset_color}%}%(!.#.$) "

alias ls='ls -F --color=auto'


settitle() {
    printf "\033k$1\033\\"
}
#PROMPT_COMMAND='$(settitle $HOST:$PWD)'

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

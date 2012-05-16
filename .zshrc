echo .zshrc

bindkey -e

autoload history-search-end
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups	# ignore duplication command history list
setopt share_history	# share command history data

zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

fpath=(~/.zsh/functions/Completion $fpath)

# タイトル設定
settitle() {
    case $TERM in
    *xterm*|rxvt|(dt|k|E)term)
        printf "\e]2;$1\a"
        ;;
    screen)
        printf "\033k$1\033\\"
	;;
    esac
}
precmd() {
    settitle "$USER@${HOST%%.*}"
}

autoload prompt_subst
autoload -U colors && colors
PROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}
%{${fg[cyan]}%}%n@%m%{${reset_color}%}%(!.#.$) "

case "${OSTYPE}" in
linux*)
	dircolors=/usr/bin/dircolors
	;;
darwin*)
	dircolors=/usr/local/Cellar/coreutils/8.16/libexec/gnubin/dircolors
	;;
esac

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
if [ -x "$dircolors" ]; then
	eval `$dircolors`
	zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
else
	export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
	zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
fi

alias ls='ls -F --color=auto'
alias rm='rm -i'
alias -s txt='cat -n'

case "${OSTYPE}" in
darwin*)
	export JAVA_HOME=/Library/Java/Home
	export JAVA_OPTS='-Dfile.encoding=UTF-8'
	alias javac='javac -J-Dfile.encoding=UTF-8'
	alias java='java -Dfile.encoding=UTF-8'
	;;
esac

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

setopt noautoremoveslash
setopt auto_pushd
setopt list_packed
setopt nolistbeep
setopt no_beep

setopt no_multios	# リダイレクト機能強化停止

#autoload predict-on	# 先方予測機能
#predict-on

autoload zed

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

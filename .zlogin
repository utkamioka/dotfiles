case "${OSTYPE}" in
darwin*)
    brew=/usr/local/bin/brew
    ;;
esac

PATH=/usr/bin:/bin:/usr/sbin:/sbin
PATH=/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$PATH
if [ -x "$brew" ]; then
    PATH=$(${brew} --prefix coreutils)/libexec/gnubin:$PATH
fi
PATH=~/bin:$PATH

if [ -e ~/android-ndk ]; then
	NDKROOT=~/android-ndk
    PATH=~/android-ndk:$PATH
fi
if [ -e ~/android-sdk ]; then
	ANDROID_HOME=~/android-sdk
    PATH=~/android-sdk/tools:~/android-sdk/platform-tools:$PATH
fi

case "${OSTYPE}" in
darwin*)
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    #source ~/.rbenv/completions/rbenv.zsh
	;;
esac

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

if [ -e ~/android-sdk-linux_x86/tools ]; then
    PATH=~/android-sdk-linux_x86/tools:$PATH
fi

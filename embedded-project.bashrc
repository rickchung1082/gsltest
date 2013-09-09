source $HOME/.bashrc

# qemu whole system emulator that boots from the linux kernel directly
alias emulator="$EMULATOR"

# mtrace
alias mtrace="$LIBC_PREBUILT_DIR/usr/bin/mtrace"

# PS1, see: http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# interactive generator http://omar.io/ps1gen/
if [ "$TERM" = "linux" ]; then
	export PS1='[\[\e[32;1m\]'"$ENV_NAME"':\[\e[0m\]\W]\$ '
else
    export PS1="[\[\e[0;33m\]$ENV_NAME:\[\e[0;37m\] \W\[\e[0m\]]\$ "
fi

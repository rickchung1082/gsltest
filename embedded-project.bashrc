source $HOME/.bashrc

# qemu whole system emulator that boots from the linux kernel directly
alias emulator="$EMULATOR"

# mtrace
alias mtrace="$LIBC_PREBUILT_DIR/usr/bin/mtrace"

# PS1, see: http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
if [ "$TERM" = "linux" ]; then
	export PS1='[\[\e[32;1m\]'"$ENV_NAME"':\[\e[0m\]\W]\$ '
else
	export PS1='[\[\e]2;'"$ENV_NAME"':\w\a\e[32;1m\]'"$ENV_NAME"':\[\e[0m\] \W]\$ '
fi

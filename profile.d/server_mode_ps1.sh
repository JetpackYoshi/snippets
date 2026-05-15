# This snippet controls the bash prompt string. It's responsible for clearly indicating 
# whether an instance is a production server or a development server. 
#
# The state is controlable via the current value of $IS_PROD. If a value has not been set,
# The server type will be shown as DEV
#
# I recommend using `/etc/environment` to set that var


if $IS_PROD; then
        PS1='\u\[\e[1m\]@\[\e[34m\]\h\[\e[0;38;5;196m\][PROD]\[\e[0;1m\]:\[\e[32m\]\w\[\e[39m\]\$\[\e[0m\] '
else
        PS1='\u\[\e[1m\]@\[\e[34m\]\h\[\e[0;38;5;226m\][DEV]\[\e[0;1m\]:\[\e[32m\]\w\[\e[39m\]\$\[\e[0m\] '
fi

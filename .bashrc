# Jake Pauls
# https://jakepauls.dev
# https://github.com/jake-pauls

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable ls highlighting, use automatic colors otherwise
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

alias ls='ls --color=auto'

# Launch fish (interactively) on boot
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
    exec fish
fi

# Uncomment to launch the starship prompt
eval "$(starship init bash)"
. "$HOME/.cargo/env"

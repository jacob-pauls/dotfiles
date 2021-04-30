# Jake Pauls
# https://jacobpauls.dev
# https://github.com/jacob-pauls

##
## General
##

set fish_greeting
set TERM "alacritty"
set EDITOR "nvim"

# Use neovim for reading manpages
set -x MANPAGER "nvim -c 'set ft=man' -"

# Set autocomplete colors
set fish_color_normal brwhite
set fish_color_autosuggestion brgreen
set fish_color_command brwhite
set fish_color_error red
set fish_color_param brwhite

##
## Functions
## Bear with me! Still learning what's capable here...
##

# Creating backup files
# ex: backup code.js => code.js.temp
function backup --argument filename
    cp $filename $filename.temp
end

##
## Aliases
##

# File Confirmation
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Arch
alias pacgod='yay -Syu'         # Update Standard and AUR Packages
alias pacup='sudo pacman -Syyu' # Standard Package Update
alias yayup='yay -Sua'          # Update AUR

# Utils
alias vim="nvim"
alias cat="bat"

# Shells (jic)
alias bashitup="sudo chsh -s /bin/bash && echo 'Please restart to enter bash!'"
alias startfishing="sudo chsh -s /bin/fish && echo 'Please restart to enter fish!'"

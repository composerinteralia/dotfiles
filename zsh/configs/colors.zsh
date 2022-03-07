# https://github.com/thoughtbot/dotfiles/blob/42a313bde1f4dc7a75cc276714008c77bf3821bf/zsh/configs/color.zsh

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

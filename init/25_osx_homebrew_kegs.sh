# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew casks need Homebrew to install." && return 1

# Ensure the cask kegs are installed.
kegs=(
  caskroom/cask
  caskroom/drivers
  caskroom/fonts
  caskroom/versions
  homebrew/bundle
  homebrew/core
  homebrew/services
)
brew_tap_kegs

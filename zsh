# -*- mode: shell-script -*-

# My fallback theme
ZSH_THEME="fino-time"

# Main Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_STRATEGY=history
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_MANUAL_REBIND=true

UNBUNDLED_COMMANDS=(
    foodcritic
    inspec
    kitchen
    knife
)

plugins=(git extract mvn vagrant bundler gem rake rvm debian sudo docker-compose terraform systemd virtualenv z zsh-autosuggestions)

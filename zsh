# -*- mode: shell-script -*-
ZSH_THEME="fino-time"

COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_AUTOSUGGEST_USE_ASYNC=true

UNBUNDLED_COMMANDS=(
    foodcritic
    inspec
    kitchen
    knife
)

plugins=(aws backup git extract knife knife_ssh mercurial mvn vagrant bundler gem rake rvm thor debian sudo kitchen docker-compose emacs berkshelf power-save terraform systemd)

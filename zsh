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

plugins=(dirpersist git extract mvn vagrant bundler gem rake rvm debian sudo docker-compose terraform systemd virtualenv)

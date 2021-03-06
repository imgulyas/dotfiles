# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/imgulyas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ empty|percentage"'
alias zshreload="source ~/.zshrc"
alias ec='emacsclient --create-frame --no-wait "$@"'
alias ect='emacsclient -nw'

alias chrome="google-chrome-stable"

#VI MODE
#bindkey -v
#export KEYTIMEOUT=1

# SWITCH ESCAPE AND CAPS
/usr/bin/setxkbmap -option "caps:escape"
alias esctocaps='/usr/bin/setxkbmap -option "caps:escape"'

export EDITOR='emacsclient --create-frame --no-wait "$@"'

#BROWSER
# export BROWSER='/var/lib/snapd/snap/bin/firefox'
export BROWSER='/usr/bin/chromium'

#INOTIFY
#echo 16384 | sudo tee /proc/sys/fs/inotify/max_user_watches

#toggle language
setxkbmap -option grp:alt_space_toggle us,hu

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# use docker container caching for pipeline integration test
export USE_DOCKER_CACHE=1

# kitty terminal completion
export TERMINAL='kitty'
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

alias ssh='kitty kitten ssh'

alias notesync='rclone copyto ~/notes/ dropbox:notes && rclone copy dropbox:notes ~/notes/ && echo "/home/notes was synced to Dropbox."'

#git
alias gsr='git rebase -i --autosquash'

#scala language server
export METALS_ENABLED='true'

export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/scripts/

export PATH=$PATH:$HOME/.nimble/bin

alias better="$HOME/.local/bin/betterscreenlock -l"

alias csvhtml="$BROWSER ~/view.html#"

export PATH="$HOME/.emacs.d/bin:$PATH"

export PATH="$HOME/.idris2/bin:$PATH"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

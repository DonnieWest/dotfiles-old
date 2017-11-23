source ~/.zplug/init.zsh
zplug "zdharma/fast-syntax-highlighting"
zplug "themes/terminalparty", from:oh-my-zsh, as:theme
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "lukechilds/zsh-nvm"

bindkey "^[[B" history-substring-search-down
bindkey "^[[A" history-substring-search-up

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
# Enable completions
if [ -d ~/.zsh/comp ]; then
    fpath=(~/.zsh/comp $fpath)
    autoload -U ~/.zsh/comp/*(:t)
fi

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

## Command history configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*:*:*:*:*' menu select

# case insensitive (all), partial-word and substring completion
if [[ "$CASE_SENSITIVE" = true ]]; then
  zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
else
  if [[ "$HYPHEN_INSENSITIVE" = true ]]; then
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
  else
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
  fi
fi
unset CASE_SENSITIVE HYPHEN_INSENSITIVE

zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# disable named-directories autocompletion
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' rehash true

# Don't complete uninteresting users
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'

# ... unless we really want to.
zstyle '*' single-ignored show

alias ls="ls --color"

export GRADLE_HOME="$HOME/gradle"
export PATH="$PATH:/usr/bin:/home/igneo676/bin:/usr/sbin:/sbin:/usr/local/bin:/bin:/usr/local/games:/usr/games:$GRADLE_HOME/bin:$HOME/.cabal/bin:/usr/bin/core_perl"
export ANDROID_HOME="$HOME/android-sdk-linux"
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
export EDITOR="nvim"
export POWERLINE_CONFIG_COMMAND="$HOME/.local/bin/powerline-config"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export STEAM_RUNTIME=0

# Increase limit of files able to be handled by TernJS
ulimit -n 2048

# Record only the latest uses of commands in history
export HISTCONTROL=ignoreboth:erasedups

source ~/.profile

eval $(dircolors ~/.dircolors)

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
  gpg-connect-agent /bye >/dev/null 2>&1
fi

# Set GPG TTY
export GPG_TTY=$(tty)

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

export JAVA8_HOME="/usr/lib/jvm/java-8-jdk"
export JAVA7_HOME="/usr/lib/jvm/java-7-openjdk"
#export JAVA6_HOME="/usr/lib/jvm/java-6-openjdk-amd64/"

export PATH="/home/igneo676/.gem/ruby/2.2.2/bin:$PATH"

alias package-json-dependency-lint=pjdl

export PATH="/home/igneo676/android-sdk-linux/emulator:$PATH"
export PATH="/home/igneo676/android-sdk-linux/platform-tools:$PATH"

export PATH="/home/igneo676/android-sdk-linux/tools/bin:$PATH"

export PATH="$PATH:$HOME/.local/bin"

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

export PATH="$PATH:/var/lib/snapd/snap/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

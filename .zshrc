source ~/.profile

autoload -Uz compinit promptinit
compinit
promptinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1

## Prompt

# Outputs current branch info in prompt format
function git_prompt_info() {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
function parse_git_dirty() {
  local STATUS=''
  local -a FLAGS
  FLAGS=('--porcelain')
  if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
    FLAGS+='--untracked-files=no'
  fi
  STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
  if [[ -n $STATUS ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

autoload -U colors && colors

setopt prompt_subst

PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) %% '

RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"

## Keybindings

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -e
bindkey '\ew' kill-region
bindkey -s '\el' "ls\n"
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[OF" end-of-line
bindkey ' ' magic-space
bindkey "^F" forward-word
bindkey "^B" backward-word
bindkey '^[[Z' reverse-menu-complete
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey ' ' magic-space

## History

if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=100000
SAVEHIST=100000
HISTCONTROL=ignoreboth:erasedups

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

alias history='fc -l 1'

## Completion

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end
setopt COMPLETE_ALIASES

WORDCHARS=''

zmodload -i zsh/complist

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

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# disable named-directories autocompletion
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
cdpath=(.)

bindkey -M menuselect '^o' accept-and-infer-next-history

# use /etc/hosts and known_hosts for hostname completion
[ -r /etc/ssh/ssh_known_hosts ] && _global_ssh_hosts=(${${${${(f)"$(</etc/ssh/ssh_known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _global_ssh_hosts=()
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r ~/.ssh/config ] && _ssh_config=($(cat ~/.ssh/config | sed -ne 's/Host[=\t ]//p')) || _ssh_config=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
hosts=(
  "$_ssh_config[@]"
  "$_global_ssh_hosts[@]"
  "$_ssh_hosts[@]"
  "$_etc_hosts[@]"
  "$HOST"
  localhost
)
zstyle ':completion:*:hosts' hosts $hosts
zstyle ':completion:*' users off

# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/
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

if [ "x$COMPLETION_WAITING_DOTS" = "xtrue" ]; then
  expand-or-complete-with-dots() {
    echo -n "\e[31m......\e[0m"
    zle expand-or-complete
    zle redisplay
  }
  zle -N expand-or-complete-with-dots
  bindkey "^I" expand-or-complete-with-dots
fi

zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

## Aliases

alias less='less -R'
alias grep='grep --color=auto'
alias ..='cd ../'
alias ls="ls --color"

## Stack

DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome pushd_ignore_dups
alias dh='dirs -v'

## Correction

setopt correct_all
alias man='nocorrect man'
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'
alias gist='nocorrect gist'
alias sudo='nocorrect sudo'

## GPG Agent

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


## Misc

# Increase limit of files able to be handled by TernJS
ulimit -n 2048

# Activate FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use custom dircolors
eval $(dircolors ~/.dircolors)

# Setup Env variables
export GRADLE_HOME="$HOME/gradle"
export ANDROID_HOME="$HOME/android-sdk-linux"
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
export POWERLINE_CONFIG_COMMAND="$HOME/.local/bin/powerline-config"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export STEAM_RUNTIME=0

export EDITOR="nvim"

export JAVA8_HOME="/usr/lib/jvm/java-8-jdk"
export JAVA7_HOME="/usr/lib/jvm/java-7-openjdk"
#export JAVA6_HOME="/usr/lib/jvm/java-6-openjdk-amd64/"

# Setup PATH

export PATH="$PATH:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/bin:/usr/local/games:/usr/games:$GRADLE_HOME/bin:$HOME/.cabal/bin:/usr/bin/core_perl"

export PATH="$HOME/android-sdk-linux/emulator:$PATH"
export PATH="$HOME/android-sdk-linux/platform-tools:$PATH"
export PATH="$HOME/android-sdk-linux/tools/bin:$PATH"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/bin:$PATH"

export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

# Custom aliases
alias package-json-dependency-lint=pjdl

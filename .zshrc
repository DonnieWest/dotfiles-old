# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"

GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
[[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmuxinator gpg-agent)

#Old one plugins=(git bundler rvm rake tmuxinator gem heroku adb autojump)
source $ZSH/oh-my-zsh.sh

# User configuration

export GRADLE_HOME="$HOME/gradle"
export PATH="$PATH:/usr/bin:/home/igneo676/bin:/usr/sbin:/sbin:/usr/local/bin:/bin:/usr/local/games:/usr/games:$GRADLE_HOME/bin"
export ANDROID_HOME="$HOME/android-sdk-linux"
export EDITOR="nvim"
export POWERLINE_CONFIG_COMMAND="$HOME/.local/bin/powerline-config"
export FZF_DEFAULT_COMMAND='ag -g ""'
export STEAM_RUNTIME=0

# Increase limit of files able to be handled by TernJS

ulimit -n 2048

source ~/.profile

eval $(dircolors ~/.dircolors)

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

export JAVA8_HOME="/usr/lib/jvm/java-8-jdk"
export JAVA7_HOME="/usr/lib/jvm/java-7-openjdk"
#export JAVA6_HOME="/usr/lib/jvm/java-6-openjdk-amd64/"

export PATH="/home/igneo676/.gem/ruby/2.2.2/bin:$PATH"

eval "$(hub alias -s)"

export NVM_DIR="/home/igneo676/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/igneo676/android-sdk-linux/tools:$PATH"

export DOCKER_HOST=unix:///var/run/docker.sock

export PATH="$PATH:$HOME/.local/bin"

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

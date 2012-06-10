# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fg"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
#CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export RABBITMQ_HOME=/usr/local/Cellar/rabbitmq/2.7.1
export NODE_ENV=development
export REDSMIN_ENV=development

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias gff="git flow feature"
alias gf="git flow"

export RABBITMQ_NODE_IP_ADDRESS=127.0.0.1
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin/:/usr/X11/bin:/opt/play:/Applications/XAMPP/xamppfiles/:/usr/local/sbin:/Users/FG/.gem/ruby/1.8/bin
export NODE_PATH=/usr/local/lib/node_modules/:/Users/FG/.node_libraries/
export PATH=/usr/local/Cellar/php/5.3.8/bin:$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH"

# ------ RUBY
export TERM="xterm-256color"
export PATH="./bin:$PATH"
[[ -s "/Users/FG/.rvm/scripts/rvm" ]] && source "/Users/FG/.rvm/scripts/rvm"



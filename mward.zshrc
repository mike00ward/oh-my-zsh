# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export SVN_HOME=/opt/subversion
export M2_HOME=~/Work/Apps/apache-maven-3.3.1
export JBOSS_HOME=~/Work/Apps/jboss-as-7.1.0.CR1b
export TOMCAT_HOME=~/Work/Apps/apache-tomcat-7.0.39
export NPM_HOME=/usr/local/share/npm
export ANDROID_HOME=/Users/mward/Work/Apps/adt-bundle-mac-x86_64-20140321/sdk
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mward/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export PATH=$NPM_HOME/bin:$SVN_HOME/bin:$M2_HOME/bin:/usr/local/bin:/usr/bin:$PATH:$TOMCAT_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# run start_mysql with sudo
alias start_mysql='sudo /usr/local/mysql/bin/mysqld_safe'
alias stop_mysql='sudo /usr/local/mysql/bin/mysqladmin shutdown'

# connect to mysql server
alias mysql=/usr/local/mysql/bin/mysql
alias mysql_admin=/usr/local/mysql/bin/mysqladmin
alias mysql_root='mysql -u root'
alias mysql_ctr="mysql -u ctr -p'ctr' ctr"
alias mysql_picks="mysql -u picks -p'picks' picks"

alias nas='automount -vc'
alias sudo_nas='sudo automount -vc'
alias sudo_unmount_nas='sudo automount -u'

alias ls='ls -G'

alias show_hidden_in_finder_on='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias show_hidden_in_finder_off='defaults write com.apple.finder AppleShowAllFiles FALSE'
kill_finders='killall Finder'

alias bby_dev30='ssh -v -i ~/Work/Projects/BestBuy/keys/ca-ssh-keypair.pem ec2-user@ec2-54-245-110-30.us-west-2.compute.amazonaws.com'
alias bby_dev32='ssh -v -i ~/Work/Projects/BestBuy/keys/ca-ssh-keypair.pem ec2-user@ec2-54-245-110-32.us-west-2.compute.amazonaws.com'
alias bby_jenkins='ssh -v -i ~/Work/Projects/BestBuy/keys/jenkins-ssh-keypair.pem ec2-user@54.245.238.194'

alias heroku_dev_develop_push='git push heroku-dev develop:master'

alias tcf_mobile_ci='ssh root@192.241.248.176'
alias tcf_mobile_dev='ssh root@api-proxy.net'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mward/.gvm/bin/gvm-init.sh" ]] && source "/Users/mward/.gvm/bin/gvm-init.sh"

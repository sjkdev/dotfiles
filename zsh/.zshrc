# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# POWERLEVEL9K_MODE="awesome-patched"

# Path to your oh-my-zsh installation.
export ZSH="/Users/apple/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#  ZSH_THEME="awesomepanda"
#  ZSH_THEME="af-magic"
# ZSH_THEME="bira"
# ZSH_THEME="bureau"
# ZSH_THEME="dogenpunk"
# ZSH_THEME="gallifrey"
# ZSH_THEME="kolo"
#ZSH_THEME="pygmalion"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"
ZSH_THEME="miloshadzic"
# ZSH_THEME="pi"



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"/

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast git-flow node ng osx npm bower brew osx autojump z bundler cake dircycle dirhistory zsh-completions django docker composer docker-compose gem github heroku history history-substring-search macports meteor ng pyenv pylint python pip rails fzf redis-cli ruby rvm sudo tmux vi-mode virtualenvwrapper virtualenv yarn brew wd compleat)

POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time virtualenv)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time virtualenv)

source $ZSH/oh-my-zsh.sh
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# User configuration

autoload -U compinit && compinit

#composer install tweak
export PATH="$PATH:$HOME/.composer/vendor/bin"

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.npm-packages/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

#vscode terminal hack

code () {
    if [[ $# = 0  ]]
        then
                open -a "Visual Studio Code"
                  else
                          [[ $1 = /*  ]] && F="$1" || F="$PWD/${1#./}"
                                open -a "Visual Studio Code" --args "$F"
                                  fi
                                }

#haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

export PATH="/usr/local/php/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
#export PATH=/usr/local/php5/bin:/usr/local/php5/bin:/Users/apple/.npm-packages/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Xamarin Workbooks.app/Contents/SharedSupport/path-bin:/Users/apple/.composer/vendor/bin:/Users/apple/.composer/vendor/bin:/Users/apple/.composer/vendor/bin:/Users/apple/.rvm/bin:/usr/local/opt/fzf/bin
#export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Path to flutter
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="~/Flutter/flutter/bin:$PATH"
export PATH=~/Flutter/flutter/bin:$PATH

export PROJECT_HOME="$HOME/Dev";
export WORKON_HOME="$HOME/virtualenvs";
# needed for virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs;
# source /usr/local/bin/virtualenvwrapper.sh;
export HOMEBREW_NO_ANALYTICS=1
# bash
export PATH=$PATH:/Users/Sean/bin
alias atom='sh /Applications/Atom.app/Contents/Resources/app/atom.sh'
alias gcl=git clone
alias gcl='git clone'
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# heroku autocomplete setup

# something needs fixing here!!!! kept getting url-magic _zsh_highltinh error
# HEROKU_AC_ZSH_SETUP_PATH=/Users/apple/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;fpath=(/usr/local/share/zsh-completions /scripts/zsh/Completion /usr/local/share/zsh/site-functions /Users/apple/.oh-my-zsh/custom/plugins/zsh-autosuggestions /Users/apple/.oh-my-zsh/custom/plugins/zsh-autosuggestions /Users/apple/.oh-my-zsh/plugins/compleat /Users/apple/.oh-my-zsh/plugins/wd /Users/apple/.oh-my-zsh/plugins/brew /Users/apple/.oh-my-zsh/custom/plugins/zsh-history-substring-search /Users/apple/.oh-my-zsh/plugins/yarn /Users/apple/.oh-my-zsh/plugins/vi-mode /Users/apple/.oh-my-zsh/plugins/tmux /Users/apple/.oh-my-zsh/plugins/sudo /Users/apple/.oh-my-zsh/plugins/rvm /Users/apple/.oh-my-zsh/plugins/ruby /Users/apple/.oh-my-zsh/plugins/redis-cli /Users/apple/.oh-my-zsh/custom/plugins/zsh-autosuggestions /Users/apple/.oh-my-zsh/plugins/rails /Users/apple/.oh-my-zsh/plugins/pip /Users/apple/.oh-my-zsh/plugins/python /Users/apple/.oh-my-zsh/plugins/pylint /Users/apple/.oh-my-zsh/plugins/pyenv /Users/apple/.oh-my-zsh/plugins/ng /Users/apple/.oh-my-zsh/plugins/meteor /Users/apple/.oh-my-zsh/plugins/macports /Users/apple/.oh-my-zsh/plugins/history /Users/apple/.oh-my-zsh/plugins/github /Users/apple/.oh-my-zsh/plugins/gem /Users/apple/.oh-my-zsh/plugins/docker-compose /Users/apple/.oh-my-zsh/plugins/composer /Users/apple/.oh-my-zsh/plugins/docker /Users/apple/.oh-my-zsh/plugins/django /Users/apple/.oh-my-zsh/plugins/dirhistory /Users/apple/.oh-my-zsh/plugins/dircycle /Users/apple/.oh-my-zsh/plugins/cake /Users/apple/.oh-my-zsh/plugins/bundler /Users/apple/.oh-my-zsh/plugins/z /Users/apple/.oh-my-zsh/plugins/autojump /Users/apple/.oh-my-zsh/plugins/osx /Users/apple/.oh-my-zsh/plugins/brew /Users/apple/.oh-my-zsh/plugins/bower /Users/apple/.oh-my-zsh/plugins/npm /Users/apple/.oh-my-zsh/plugins/osx /Users/apple/.oh-my-zsh/plugins/nyan /Users/apple/.oh-my-zsh/plugins/ng /Users/apple/.oh-my-zsh/plugins/node /Users/apple/.oh-my-zsh/plugins/git-flow /Users/apple/.oh-my-zsh/plugins/gitfast /Users/apple/.oh-my-zsh/plugins/git /Users/apple/.oh-my-zsh/functions /Users/apple/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.2/functions)
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH=/Users/apple/Flutter/flutter/bin:~/Flutter/flutter/bin:/usr/local/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/usr/local/php/bin:/usr/local/opt/php@7.1/bin:/Users/apple/Library/Haskell/bin:/Users/apple/.npm-packages/bin:/Users/apple/.rbenv/shims:/Users/apple/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/apple/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:/Applications/Xamarin:

export PATH=/Users/apple/.composer/vendor/bin:/Users/apple/Flutter/flutter/bin:/Users/apple/Flutter/flutter/bin:/usr/local/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/usr/local/php/bin:/usr/local/opt/php@7.1/bin:/Users/apple/Library/Haskell/bin:/Users/apple/.npm-packages/bin:/Users/apple/.rbenv/shims:/Users/apple/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/apple/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:/Users/apple/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:/Applications/Xamarin
PATH=~/.composer/vendor/bin:/Users/apple/Flutter/flutter/bin:/Users/apple/Flutter/flutter/bin:/usr/local/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/usr/local/php/bin:/usr/local/opt/php@7.1/bin:/Users/apple/Library/Haskell/bin:/Users/apple/.npm-packages/bin:/Users/apple/.rbenv/shims:/Users/apple/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/apple/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:/Users/apple/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:/Applications/Xamarin
#export PATH="/usr/local/opt/php@7.2/bin:$PATH"
#export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH=/usr/local/bin/php:$PATH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)
export PATH=$PATH:/Applications/flutter/bin
alias exp-net-mac='export ASPNETCORE_Environment=Development'
alias dotre='dotnet restore'
alias dotru='dotnet run'
alias dotb='dotnet build'
alias idea='open -a /Applications/IntelliJ IDEA CE.app'

alias rex='brew services stop mysql; SUDO /Applications/XAMPP/xamppfiles/xampp start'
alias dotwaru='dotnet watch run'
# alias python=python3
alias runlove='/Applications/love.app/Contents/MacOS/love'
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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/apple/.sdkman"
#[[ -s "/Users/apple/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/apple/.sdkman/bin/sdkman-init.sh"export PATH=/Applications/flutter/bin:/Users/apple/bin:/usr/local/bin:/Users/apple/.npm-packages/bin:/usr/local/opt/php@7.2/sbin:/usr/local/opt/php@7.2/bin:/Users/apple/.composer/vendor/bin:/Users/apple/Flutter/flutter/bin:/Users/apple/Flutter/flutter/bin:/usr/local/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/usr/local/php/bin:/usr/local/opt/php@7.1/bin:/Users/apple/Library/Haskell/bin:/Users/apple/.npm-packages/bin:/Users/apple/.rbenv/shims:/Users/apple/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/apple/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:/Users/apple/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:/Applications/Xamarin:/Applications/flutter/bin:/Users/apple/.rvm/bin
alias fpg='flutter packages get'
alias fru='flutter run'
alias sbz='source ~/.bash_profile; source ~/.zshrc'
alias sbp='source ~/.bash_profile'
alias sz='source ~/.zshrc'
export PATH=/Users/apple/sdkman/bin:/Users/apple/bin:/usr/local/bin:/Users/apple/.npm-packages/bin:/usr/local/opt/php@7.2/sbin:/usr/local/opt/php@7.2/bin:/Users/apple/.composer/vendor/bin:/Users/apple/Flutter/flutter/bin:/Users/apple/Flutter/flutter/bin:/usr/local/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/usr/local/php/bin:/usr/local/opt/php@7.1/bin:/Users/apple/Library/Haskell/bin:/Users/apple/.npm-packages/bin:/Users/apple/.rbenv/shims:/Users/apple/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/apple/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet:/Users/apple/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:/Applications/Xamarin:/Applications/flutter/bin:/Users/apple/.rvm/bin

alias xmpstart='SUDO /Applications/XAMPP/xamppfiles/xampp start'
alias xmpstop='SUDO /Applications/XAMPP/xamppfiles/xampp stop'
alias lampp+='SUDO /Applications/XAMPP/xamppfiles/xampp start'
alias lampp-='SUDO /Applications/XAMPP/xamppfiles/xampp stop'


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias to disable and re enable wifi on macosx
alias restart_en0='sudo ifconfig en0 down && sudo ifconfig en0 up'

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(rbenv init -)"
export PATH="/usr/local/opt/qt/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/php@7.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.2/include"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
#export JAVA_HOME=/Library/Java/Home
#export JAVA_HOME=$(/Library/Java/Home/bin/java)
export JAVA_HOME=$(/usr/libexec/java_home)
alias bulkunzip='for i in *.zip; do unzip vintage-texture-pack.zip -d vintage-texture-pack; done'
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home
alias sketch='/Users/apple/sketch_trial/ && ./sketch.sh'
export PATH="/usr/local/opt/qt/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
alias py2Serve='python -m SimpleHTTPServer 8080'
alias pyServe='python3 -m http.server'
alias massUnzip='for i in *.zip vuejs-admin-dashboard-iemplate.zip -d vuejs-admin-dashboard-iemplate; done'
fpath+=${ZDOTDIR:-~}/.zsh_functions
alias brew+='brew update && brew upgrade && brew cleanup && brew doctor'
alias flushDNS='sudo killall -HUP mDNSResponder'
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/php@7.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.2/include"
alias mega_npm="npm i && npm run start"
export PATH="${PATH}:$(brew --prefix homebrew/core/php@7.2)/bin"
alias nrs="npm run start"
alias nrd="npm run dev"
alias nrb="npm run build"
alias bris="brew install"
alias brie="brew reinstall"
export TERM=xterm-256color
#gridsome hacks
alias gridsome_develop="npm run develop"
alias gridsome_build="npm run build"
alias gridsome_explore="npm run explore"

# sudo update_dyld_shared_cache -force to help spod
alias dyldf="sudo update_dyld_shared_cache -force"

#maven
export M2_HOME=/usr/local/Cellar/maven/3.5.0/libexec
export M2=${M2_HOME}/bin
export PATH=${PATH}:${M2_HOME}/bin

#flask deets
export FLASK_APP=flaskr
export FLASK_ENV=development
export PATH=$PATH:/Users/Sean/.npm-packages/bin
export PATH=$PATH:/Users/apple/.npm-packages/bin
export PATH=$PATH:/Users/sjk1/.npm-packages/bin
export PATH="$PATH:/opt/yarn-v1.19.1/bin"
export ASPNETCORE_Environment=Development

#sqlite hack
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
# alias mysql>="/usr/local/mysql/bin/mysql start"
alias dwarf='/Applications/dwarf_fortress/df_osx/ && ./df'

export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/xampp/xamppfiles/bin/mysql:$PATH
# alias xmysql="/Applications/xampp/xamppfiles/bin/mysql -u root -psecret"
alias a2pw="XQh2kx1!5)y5FJ"
# alias mysql="/Applications/xampp/xamppfiles/bin/mysql -u root -psecret"
alias xmysql="/Applications/xampp/xamppfiles/bin/mysql -u root -psecret"
alias xmysql="/Applications/xampp/xamppfiles/bin/mysql -u root -psecret"
alias ghrepo="~/scripts/ghrepo.sh"
alias rct_fe="npm i --save react react-router react-router-dom bootstrap node-sass reactstrap sass-loader axios jquery @popperjs/core react-snap @fortawesome/fontawesome-svg-core @fortawesome/free-solid-svg-icons @fortawesome/react-fontawesome"
alias node_fe="npm i --save bootstrap node-sass sass-loader axios jquery @popperjs/core @fortawesome/fontawesome-svg-core @fortawesome/free-solid-svg-icons @fortawesome/react-fontawesome"
alias npm_server="npm i --save express cors body-parser path"export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export VIRTUAL_ENV_DISABLE_PROMPT=
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias webpacknpm="npm i webpack webpack-cli webpack-dev-server html-webpack-plugin"
alias loadernpm="npm i babel-loader style-loader css-loader sass-loader node-sass"
alias reduxnpm="npm i redux react-redux redux-thunk"
alias reactnpm="npm i react react-dom react-router-dom"
alias depNPM="npm i axios bootstrap react-bootstrap"
alias extranpm="npm i jquery @popperjs/core react-snap @fortawesome/fontawesome-svg-core @fortawesome/free-solid-svg-icons @fortawesome/react-fontawesome"
alias webpacknpm="npm i webpack webpack-cli webpack-dev-server html-webpack-plugin"
export PATH=$PATH:/usr/local/go/bin
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
alias python=python
export PATH="$HOME/.npm-packages/bin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
alias findfsck="ps aux | grep fsck"
alias killfsck="sudo pkill -f fsck"
export PATH="$HOME/usr/local/Cellar/mongodb-community-shell/4.2.0/bin:$PATH"
alias hh="cd ~"
export PATH="$PATH:`pwd`/flutter/bin"
alias sas="sudo apachectl start"
alias sast="sudo apachectl stop"
alias sars="sudo apachectl restart"
alias python2="python"
alias python="python3"
alias pip2="pip"
alias pip="pip3"
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export PATH="/usr/local/opt/apr-util/bin:$PATH"
export PATH="/usr/local/opt/apr/bin:$PATH"

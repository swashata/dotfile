# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# TypeScript temporary fix
export TSC_WATCHFILE="UseFsEventsWithFallbackDynamicPolling"

# GPG
export GPG_TTY=$(tty)

path=(
  /usr/local/{bin,sbin}
  /usr/local/opt/php@7.2/{bin,sbin}
  /usr/local/opt/gettext/bin
  /usr/local/opt/python/libexec/bin
  /usr/local/opt/mariadb@10.0/bin
  /Users/swashata/.gem/ruby/2.3.0/bin
  /usr/local/opt/icu4c/bin
  /usr/local/opt/icu4c/sbin
  $path
)

export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# Path to your oh-my-zsh installation.
export ZSH="/Users/swashata/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# SPACESHIP_GIT_STATUS_SHOW="true"
# SPACESHIP_DIR_TRUNC="1"
# We use pure prompt
ZSH_THEME=""


# SPACESHIP_PROMPT_ORDER=(
#   dir             # Current directory section
#   git             # Git section (git_branch + git_status)
#   # package         # Package version
#   exec_time       # Execution time
#   # line_sep      # Line break
#   exit_code       # Exit code section
#   char            # Prompt character
# )

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
plugins=(
  git
  gpg-agent
  osx
  zsh-completions
  zsh-autosuggestions
  yarn
  npm
  wp-cli
  # It must be at last
  zsh-syntax-highlighting
  history-substring-search
  # No more plugins
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Extended auto completion
autoload -U compinit && compinit

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
export VISUAL='vim'
export PAGER='less'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases


alias vag='cd /Volumes/Development/vagrant; vagrant up'
alias vagd='cd /Volumes/Development/vagrant; vagrant halt'
# alias eform='cd /Volumes/Development/vagrant/www/eform/public_html/wp-content/plugins/wp-fsqm-pro'
# alias wpeform='cd /Volumes/Development/vagrant/www/wpeform/public_html/wp-content/plugins/wp-eform'
# alias socialpress='cd /Volumes/Development/vagrant/www/socialpress/public_html/wp-content/plugins/wpq-social-press'
# alias fontIconPicker='cd /Volumes/Development/vagrant/www/npm/public_html/fontIconPicker'
# alias gfx='cd /Volumes/Development/WPQuark/Graphics/wpq-graphics'
# alias wpupdate='cd /Volumes/Development/vagrant/www/wpupdate/public_html/wp-content/plugins/wpq-wp-update'
# alias vrindia='cd /Volumes/Development/vagrant/www/vrindia/public_html/wp-content/plugins/e-rickshaw-inventory/'
# alias vagc='cd /Volumes/Development/vagrant'
# alias www='cd /Volumes/Development/vagrant/www'
alias bss='browser-sync start --directory --server --files "**/*.js" --files "**/*.css" --files "**/*.html" --index "index.html"'
# alias devd='cd /Volumes/Development'
# alias swas='cd /Volumes/Development/PersonalProjects/swas.io'
# Safe guard rm
# alias rm=trash
# Some @code stuff
alias c='code .'
# alias code='code-insiders'
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias jssize="pbpaste | terser -c -m | gzip -c9c | wc -c"

# WordPress Unit Test Environment
export WP_TESTS_DIR="/Volumes/Development/wptest/wordpress-tests-lib"
export WP_CORE_DIR="/Volumes/Development/wptest/wordpress/"

# Bat
export BAT_THEME="Tomorrow Dark"
# include Z
. /usr/local/etc/profile.d/z.sh

export BROWSER='open'

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

# Set aliases for long directories
setopt AUTO_NAME_DIRS
wpeform=/Volumes/Development/vagrant/www/wpeform/public_html/wp-content/plugins/wp-eform
eform='/Volumes/Development/vagrant/www/eform/public_html/wp-content/plugins/wp-fsqm-pro'
socialpress='/Volumes/Development/vagrant/www/socialpress/public_html/wp-content/plugins/wpq-social-press'
fontIconPicker='/Volumes/Development/vagrant/www/npm/public_html/fontIconPicker'
gfx='/Volumes/Development/WPQuark/Graphics/wpq-graphics'
wpupdate='/Volumes/Development/vagrant/www/wpupdate/public_html/wp-content/plugins/wpq-wp-update'
vrindia='/Volumes/Development/vagrant/www/vrindia/public_html/wp-content/plugins/e-rickshaw-inventory/'
vagc='/Volumes/Development/vagrant'
www='/Volumes/Development/vagrant/www'
devd='/Volumes/Development'
swas='/Volumes/Development/PersonalProjects/swas.io'

# Bonus enable cdable variables
setopt CDABLE_VARS

# increase max open file
ulimit -n 65536 65536

# added by travis gem
[ -f /Users/swashata/.travis/travis.sh ] && source /Users/swashata/.travis/travis.sh

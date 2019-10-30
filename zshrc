# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/michaelborens/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_VIRTUALENV_BACKGROUND='darkseagreen'
POWERLEVEL9K_DIR_HOME_BACKGROUND='dodgerblue2'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='dodgerblue2'
POWERLEVEL9K_DIR_ETC_BACKGROUND='dodgerblue2'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='dodgerblue2'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='white'
POWERLEVEL9K_MODE='Powerlevel10k'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
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
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
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
    terraform
    ansible
    fd
    encode64
    extract
    jsontools
    fzf
    git
    python
    pip
    docker
    helm
    kubectl
    zsh-autosuggestions
    zsh-syntax-highlighting
)
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
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1
alias ls='/bin/ls -bFHGLOPW'
alias decrypt-vault-cs="ansible-vault decrypt --vault-password-file $HOME/.ansible_vault_passwd group_vars/all/vault.yml"
alias mkdir="mkdir -p"
alias t="terraform"
alias tar="gtar"
alias make_deploy='make -f $HOME/Documents/Development/ContentSquare/Makefile -C $(pwd)'
alias gmerge='git merge --no-ff'
alias grebase='git rebase -r'
alias cs='cd Documents/Development/ContentSquare/Git/'
# Override Git alias
alias glg="git lg -25"
export AWS_DEFAULT_PROFILE=default
# Ansible-dev
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.ansible_vault_passwd
export DEPLOY_AWS_SECRET_ACCESS_KEY=""
export DEPLOY_AWS_ACCESS_KEY_ID=""
export KAPACITOR_URL=""
# Source functions to use contentsquare aws-ssh binary
source $HOME/Documents/Development/ContentSquare/Git/dev-toolbox/setup-workstation/aws-ssh.sh
# Kubernetes config for platform_k8s-paas
export AWS_DEFAULT_REGION=eu-west-1
export KUBECONFIG=~/.kube/config
# GoLang Config
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# Terraform
export TF_VAR_vault_location=/Users/michaelborens/Documents/Development/ContentSquare/Git/ansible-dev/group_vars/all/vault.yml
export ANSIBLE_DIR=~/Documents/Development/ContentSquare/Git/ansible-dev
export GITHUB_TOKEN=""
export GITHUB_TOKEN_PERSONNAL=""
# Artifactory
export ARTIFACTORY_USER=michael.borens
export ARTIFACTORY_TOKEN=AKCp5dK4un9RLSr4pXLjCiVbStfHzPsCQcGFQhGxz9zp96ZPFSemm7o9XRFUGSmwEfbnA9UwV
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/michaelborens/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/michaelborens/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/michaelborens/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/michaelborens/google-cloud-sdk/completion.zsh.inc'; fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
source ~/.ssh/source-key > /dev/null 2>&1
export PATH="/usr/local/sbin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# http://mrjoelkemp.com/2013/06/remapping-iterm2-option-keys-for-fish-terminal/
# bindkey "\e\[1\;9C" forward-word
# bindkey "\e\[1\;9D" backward-word
# bindkey "\e\[dw" backward-kill-word

#ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"
#ZSH_THEME="gamussa_skwp"

BULLETTRAIN_TIME_SHOW=false

BULLETTRAIN_PROMPT_CHAR="λ"
#BULLETTRAIN_PROMPT_CHAR="➜ "
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_DIR_BG=25
#BULLETTRAIN_RUBY_SHOW=false
#BULLETTRAIN_VIRTUALENV_SHOW=false
#BULLETTRAIN_PROMPT_SEPARATE_LINE=true
BULLETTRAIN_CONTEXT_SHOW=true
#BULLETTRAIN_CONTEXT_BG=6
BULLETTRAIN_CONTEXT_BG=105
BULLETTRAIN_CONTEXT_FG=0

BULLETTRAIN_GIT_COLORIZE_DIRTY=true

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy-mm-dd"

HISTCONTROL=ignoredups:ignorespace

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git colored-man-pages colorize github pip python docker gradle gitignore httpie mvn node npm)

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

# changes hex 0x15 to delete everything to the left of the cursor,
# rather than the whole line
bindkey "^U" backward-kill-line

# binds hex 0x18 0x7f with deleting everything to the left of the cursor
#bindkey "^X\\x7f" backward-kill-line

# adds redo
#bindkey "^X^_" redo

#alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias zshconfig="$EDITOR ~/.zshrc"
alias envconfig="$EDITOR ~/.zshenv"

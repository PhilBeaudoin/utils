# Setup path
export PATH=$PATH:$HOME/bin

# Setup ls aliases
alias ls="ls -G"
alias ll="ls -laG"

# Setup go coding alias
alias go="cd /Users/philippebeaudoin/src/waverly/news-crawl"
alias gogo="cd /Users/philippebeaudoin/src/waverly/news-crawl && source set_api_keys.sh"
alias prod="kubectl config set-context arn:aws:eks:us-east-2:504923666478:cluster/prod"
alias prod-test="kubectl config set-context arn:aws:eks:us-east-2:504923666478:cluster/prod-test"

# Support bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Enable git-prompt
[[ $- == *i* ]]   &&   . $HOME/bin/git-prompt/git-prompt.sh

# Enable git completion
source $HOME/bin/git-completion/git-completion.bash

# GitHub aliases
alias ppr="$HOME/bin/pushpr.sh"   # Push a PR

# Enable kubectl completion
source <(kubectl completion bash)

# Enable aws CLI completion
complete -C '/usr/local/bin/aws_completer' aws

# Enable 1Password CLI completion
source <(op completion bash)

#export PATH="/usr/local/Cellar/node/14.11.0/bin:$PATH"

export KUBE_EDITOR=nano

alias awsswitch="source $HOME/bin/awsswitch.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/bin/google-cloud-sdk/path.bash.inc' ]; then . '$HOME/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/bin/google-cloud-sdk/completion.bash.inc' ]; then . '$HOME/bin/google-cloud-sdk/completion.bash.inc'; fi

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# Default to the homebrew install of Python 3
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

# Add Python 3 binaries
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Setup Android paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

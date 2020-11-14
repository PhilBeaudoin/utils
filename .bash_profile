# Setup path
export PATH=$PATH:$HOME/bin

# Setup ls aliases
alias ls="ls -G"
alias ll="ls -laG"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/philippebeaudoin/bin/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/philippebeaudoin/bin/google-cloud-sdk/completion.bash.inc'

# Enable git-prompt
[[ $- == *i* ]]   &&   . /Users/philippebeaudoin/bin/git-prompt/git-prompt.sh

# Enable git completion
source /Users/philippebeaudoin/bin/git-completion/git-completion.bash
export PATH="$HOME/.cargo/bin:$HOME/Library/Python/3.6/bin/:$PATH"

# Enable kubectl completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source <(kubectl completion bash)

# Enable aws CLI completion
complete -C '/usr/local/bin/aws_completer' aws

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export PATH="$HOME/.poetry/bin:$PATH"

export ANDROID_SDK="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK:$ANDROID_SDK/platform-tools:$PATH"

export PATH="/usr/local/Cellar/node/14.11.0/bin:$PATH"

export KUBE_EDITOR=nano

alias awsswitch="source /Users/philippebeaudoin/bin/awsswitch.sh"

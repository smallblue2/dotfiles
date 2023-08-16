if status is-interactive
    set fish_greeting
    neofetch
    alias n="nano"
    alias v="nvim"
    alias e="einstein"
    alias sv="ssh ryann62@student.computing.dcu.ie"
    alias p="python3"
    alias docker="sudo docker"
    alias pl="swipl -s"
    alias ij="idea.sh"
    set -U DOTFILES /home/ryann62/dotfiles
    set -Ux ANDROID_SDK_ROOT $HOME/Android/Sdk
    set -U GOPATH $HOME/go
    set -U fish_user_paths $GOPATH/bin/ $fish_user_paths
    set -U fish_user_paths /usr/local/go/bin/ $fish_user_paths
    set -Ux fish_user_paths /opt/flutter/bin $fish_user_paths
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ryann62/anaconda3/bin/conda
    eval /home/ryann62/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

fish_vi_key_bindings

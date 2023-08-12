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
    set -U fish_user_paths /home/ryann62/development/flutter/bin $fish_user_paths
    set -U fish_user_paths /home/ryann62/Apps/android-studio/bin $fish_user_paths
    set -U fish_user_paths /home/ryann62/Apps/ $fish_user_paths
    set -U GOPATH $HOME/go
    set -U fish_user_paths $GOPATH/bin/ $fish_user_paths
    set -U fish_user_paths /usr/local/go/bin/ $fish_user_paths
    set -U fish_user_paths export $HOME/.pub-cache/bin $fish_user_paths
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ryann62/Apps/anaconda3/bin/conda
    eval /home/ryann62/Apps/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

fish_vi_key_bindings

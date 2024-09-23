if status is-interactive
    set fish_greeting
    neofetch
    alias n="nano"
    alias hx="helix"
    alias v="nvim"
    alias e="einstein"
    alias sv="ssh ryann62@student.computing.dcu.ie"
    alias p="python3"
    alias docker="sudo docker"
    alias pl="swipl -s"
    alias ij="idea.sh"
    alias dp="kitty --detach &"
    set -U DOTFILES /home/ryann62/dotfiles
    set -Ux ANDROID_SDK_ROOT $HOME/Android/Sdk
    set -U GOPATH $HOME/go
    set -U fish_user_paths $GOPATH/bin/ $fish_user_paths
    set -U fish_user_paths /usr/local/go/bin/ $fish_user_paths
    set -Ux fish_user_paths /opt/flutter/bin $fish_user_paths
    set -Ux fish_user_paths $HOME/.cargo/bin $fish_user_paths
    set -Ux PKG_CONFIG_PATH /home/ryann62/College/Project/c-mess/fuse-3.16.1/build/meson-private
    set -x LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
end

function dp
    kitty --detach &
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ryann62/anaconda3/bin/conda
    eval /home/ryann62/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# vim vinding
fish_vi_key_bindings

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# ocaml
eval (opam env --switch=default)

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ryann62/.ghcup/bin # ghcup-env


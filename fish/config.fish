if status is-interactive
    set fish_greeting
    alias n="nano"
    alias hx="helix"
    alias v="nvim"
    alias e="einstein"
    alias t="todo.sh"
    alias sv="ssh ryann62@student.computing.dcu.ie"
    alias p="python3"
    alias docker="sudo docker"
    alias pl="swipl -s"
    alias ij="idea.sh"
    alias dp="kitty --detach &"
    alias tdls="todo.sh list | awk '/due:[0-9-]{10}/ {match(\$0, /due:([0-9-]{10})/, a); print a[1], \$0}' | sort | cut -d ' ' -f2-"
    alias antlr='java -cp "/home/ryann62/College/Y4S1/CSC1098-Compilers/antlr-source/antlr-4.13.2-complete.jar:$CLASSPATH" org.antlr.v4.Tool' alias grun='java -cp "/home/ryann62/College/Y4S1/CSC1098-Compilers/antlr-source/antlr-4.13.2-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
    set -U DOTFILES /home/ryann62/dotfiles
    set -Ux ANDROID_SDK_ROOT $HOME/Android/Sdk
    set -U GOPATH $HOME/go
    set -U fish_user_paths $GOPATH/bin/ $fish_user_paths
    set -U fish_user_paths /usr/local/go/bin/ $fish_user_paths
    set -Ux fish_user_paths /opt/flutter/bin $fish_user_paths
    set -Ux fish_user_paths $HOME/.cargo/bin $fish_user_paths
    set -Ux PKG_CONFIG_PATH /home/ryann62/College/Project/c-mess/fuse-3.16.1/build/meson-private
    set -U fish_user_paths /home/ryann62/.deno/bin $fish_user_paths
    set -U CLASSPATH /home/ryann62/College/Y4S1/CSC1098-Compilers/antlr-source/antlr-4.13.2-complete.jar
    set -x LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
    echo "TODO:"
    todo.sh list
end

function dp
    kitty --detach &
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ryann62/anaconda3/bin/conda
    eval /home/ryann62/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<

# vim vinding
fish_vi_key_bindings

# ocaml
eval (opam env --switch=default)

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/ryann62/.ghcup/bin # ghcup-env

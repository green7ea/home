set PATH /home/manu/.local/bin $PATH
set PKG_CONFIG_PATH /home/manu/.local/lib/pkgconfig
set LANG en_CA.UTF-8

export EDITOR="emacs"
export LANG=en_CA.UTF-8

function fish_user_key_bindings
    bind \en backward-char
    bind \ee history-search-forward
    bind \ei history-search-backward
    bind \eo forward-char

    bind \cn backward-word
    bind \co forward-word
end

source ~/.cargo/env

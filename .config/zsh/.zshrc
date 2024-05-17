PATH="$HOME/.local/bin:$PATH"

# Zsh Options
setopt autocd
stty stop undef


# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"


# Basic auto/tab complete:
autoload -U compinit

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


export KEYTIMEOUT=1
export FZF_DEFAULT_OPTS='--bind=k:up,j:down'

# Use vim keys in tab complete menu:
if [ -z $NVIM ]; then
    bindkey -M menuselect 'h' vi-backward-char
    bindkey -M menuselect 'k' vi-up-line-or-history
    bindkey -M menuselect 'l' vi-forward-char
    bindkey -M menuselect 'j' vi-down-line-or-history
    bindkey -v '^?' backward-delete-char
    bindkey -v

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}


zle -N zle-keymap-select
zle-line-init() {
zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

export tuifi_vim_mode=True

fi

export PICO_SDK_PATH='/home/spagett/projects/pico-sdk'

# Some alias's
alias rm="rm -rf"
alias cp="cp -r"
# Add colours to ls
alias ls="eza -1 --icons -lh --no-user --no-permissions"

# Enable syntax highlighting and other plugins
source "$ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh"
source "$ZDOTDIR/plugins/zsh-bash-completions-fallback/zsh-bash-completions-fallback.plugin.zsh"
source "$ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

# Start starship (the prompt)
eval "$(starship init zsh)"

ufetch

export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# ---- Zinit annexes ----
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust


# ---- Plugins (lazy-loaded) ----
#zinit ice wait'1' lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait'2' lucid
zinit light zsh-users/zsh-completions

# ---- Completion (must be before syntax highlighting) ----
autoload -Uz compinit && compinit

# ---- Syntax highlighting (LAST) ----
zinit ice wait'3' lucid
zinit light zsh-users/zsh-syntax-highlighting


# ---- Theme (optional lazy load) ----
# zinit light sindresorhus/pure

# ---- Autosuggest style ----
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# ---- History behavior ----
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
HISTDUP=erase

setopt share_history        # share history across tabs
setopt hist_ignore_dups     # no consecutive duplicates
setopt hist_ignore_space    # commands starting with space not saved
setopt hist_verify          # show history expansion before executing
setopt hist_save_no_dups
setopt hist_ignore_all_dups

# ---- fzf (Homebrew) ----
if [[ -f "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
fi

if [[ -f "$(brew --prefix)/opt/fzf/shell/completion.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
fi

eval "$(zoxide init zsh)"

# ---- ohmyposh ----
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/theme_v2.omp.json)"

# ---- Key bindings ----
bindkey -e
bindkey '^R' fzf-history-widget

# ---- Completion Styling ----
#zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# ---- Aliases -----
alias ls='ls --color'
alias llr='ls -lrth --color'

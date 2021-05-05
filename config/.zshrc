HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_expand
setopt inc_append_history

export EDITOR=vim

# asdf
. $HOME/.asdf/asdf.sh

# direnv
eval "$(direnv hook zsh)"

# peco
function peco-history-selection() {
  BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
  CURSOR=${#BUFFER}
  zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# ls
alias ls='gls -GF --color=auto'
eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-dark)

# git prompt
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
setopt prompt_subst
GIT_PS1_SHOWDIRTYSTATE=true
PS1='%F{green}%n:%f%F{white}%~%f%F{yellow}$(__git_ps1 " (%s)")%f$ '

# git completion
autoload -U compinit
compinit -u

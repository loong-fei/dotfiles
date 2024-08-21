export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


### variables
export EDITOR='nvim'
export GOPATH=$HOME/go

### PATH
export PATH=${PATH}:~/.bin/:/opt/homebrew/bin:$GOPATH/bin

### Aliases
alias vi=nvim
alias cat=bat
alias ls=eza
alias lg=lazygit
alias ai=start-chatgpt.sh
alias cd=z

## zoxide
eval "$(zoxide init zsh)"


### fzf configurations
source <(fzf --zsh)
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" --preview 'bat --style=numbers --color=always --line-range :500 {}';;
  esac
}

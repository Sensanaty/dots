# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sensanaty/.oh-my-zsh"

# Load powerlevel10k theme
DISABLE_MAGIC_FUNCTIONS=true
ZSH_THEME="powerlevel10k/powerlevel10k"

# Oh My Zsh! Plugins
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(git evalcache zsh-nvm npm gitfast colorize pip python brew macos last-working-dir zsh-syntax-highlighting history-substring-search zsh-autosuggestions fzf)

# Add rbenv to PATH
export PATH="$HOME/.rbenv/bin:$PATH"

# type -a rbenv > /dev/null && eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

_evalcache rbenv init -

source ~/.zplug/init.zsh
zplug "wfxr/forgit"
zplug load

# Export the NVM directory
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load custom P10K config file
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.aliases
alias ls="exa -laF --icons --group-directories-first"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Users/sensanaty/Downloads:$PATH"

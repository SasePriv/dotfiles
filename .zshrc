# Loading nvm# Loading nvm
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git               # git completions
	pj                # cd to local projects with completions
	safe-paste  	  # Make pasting into the shell more safe
	colored-man-pages # The name says it all
	systemd           # systemd completions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Go binaries
export PATH="$HOME/go/bin:$PATH"

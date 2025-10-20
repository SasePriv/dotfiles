# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Loading nvm# Loading nvm
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Ensure Powerlevel10k is installed
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
  echo "Installing Powerlevel10k theme..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

#################
#  ZSH Plugins  #
#################

# Check if oh-my-zsh is installed
if [ ! -d $ZSH ]; then
  echo --------------------------
  echo   Installing Oh-my-zsh
  echo --------------------------
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

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

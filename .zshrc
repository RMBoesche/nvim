export PATH=$HOME/.local/bin:$HOME/.cargo/bin:/opt/sedatools/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#enable vi mode
bindkey -v

#Zsh Autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#Zsh Syntax Highlighting - Catppuccin Theme
source ~/.config/zsh/plugins/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Fuzzy Finder - Catpuccin Theme

export FZF_CTRL_R_OPTS="--reverse"
export FZF_TMUX_OPTS="-p"

#Smart Tmux Session Manager
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH

#Aliases
source ~/.config/zsh/aliases.sh

export NGLD_LICENSE_FILE=/opt/sedatools/etc/license.lic
export LM_LICENSE_FILE=/opt/sedatools/etc/license.lic
export NAN_LICENSE_FILE=27070@10.1.3.89
export SFLM_FLEXLM=1

export DISPLAY=$(grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(dircolors -b)"

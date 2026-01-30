# Aliases
# Add dotfiles to chezmoi, then stage and show status in chezmoi repo.
alias cbackup='chezmoi add ~/.zshrc ~/.config/zsh ~/.p10k.zsh ~/.config/git/config && chezmoi git add . && chezmoi git -- status'

# Plugins used by CachyOS / oh-my-zsh
plugins=(git z sudo colored-man-pages command-not-found)

# CachyOS zsh config (if installed)
if [[ -f /usr/share/cachyos-zsh-config/cachyos-config.zsh ]]; then
  source /usr/share/cachyos-zsh-config/cachyos-config.zsh
fi

# fzf-tab (installed via package manager)
if [[ -f /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh ]]; then
  source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh
fi

# fastfetch on interactive shell (if available)
if [[ -o interactive ]] && command -v fastfetch >/dev/null 2>&1; then
  fastfetch
fi

# Environment and globals
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Custom functions directory
if [[ -d "$ZSH_CONFIG_HOME/functions" ]]; then
  fpath=("$ZSH_CONFIG_HOME/functions" $fpath)
fi

# Completion setup (only if not already initialized)
if [[ -o interactive ]]; then
  autoload -U compinit
  dumpdir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
  [[ -d "$dumpdir" ]] || mkdir -p "$dumpdir"
  dumpfile="$dumpdir/zcompdump-${ZSH_VERSION}"

  # _comps is defined by compinit; skip if already initialized.
  if (( ! ${+_comps} )); then
    compinit -C -d "$dumpfile"
  fi
fi

# Node Version Manager (nvm)
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

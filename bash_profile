# Color
export CLICOLOR=1

# Macports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ["${ref#refs/heads/}"]"
}

function ruby_version {
  echo " (`rbenv version-name`)"
}

export PS1="\u@\H \w\$(parse_git_branch)\$(ruby_version) \n\$ "

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Postgres 
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export GEOS_LIBRARY_PATH="/Applications/Postgres.app/Contents/Versions/9.4/lib/libgeos_c.dylib"
export GDAL_LIBRARY_PATH="/Applications/Postgres.app/Contents/Versions/9.4/lib/libgdal.dylib"

# Git stuff
source ~/.oh-my-git/prompt.sh
alias gitup="git submodule update --init --recursive"
alias gitd="git diff | mate"export PYENV_ROOT="$HOME/.pyenv"


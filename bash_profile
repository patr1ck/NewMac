# Color
export CLICOLOR=1

# Macports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Prompt
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ["${ref#refs/heads/}"]"
}

function ruby_version {
  echo " (`rbenv version-name`)"
}

export PS1="\u@\H \w\$(parse_git_branch)\$(ruby_version) \n\$ "

# Postgres 
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

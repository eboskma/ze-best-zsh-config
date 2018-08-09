# Currently this path is appendend to dynamically when picking a ruby version
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:~/.rbenv/bin:~/.yarn/bin:~/.local/bin:/usr/local/sbin:$PATH

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='-FRX --ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

# GitHub token with no scope, used to get around API limits
test -f ~/.gh_api_token && export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.gh_api_token)

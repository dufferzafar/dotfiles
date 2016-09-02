local brew_prefix=$(brew --prefix)

# Stuff that came from pipsi
export PATH=$PATH:~/.local/bin

# Packages installed using pip install --user go here
export PATH=$PATH:~/Library/Python/2.7/bin

# For Go (brew install golang?)
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Autojump
[[ -s $brew_prefix/etc/profile.d/autojump.sh ]] && source $brew_prefix/etc/profile.d/autojump.sh

# iTerm
[[ -s ~/.iterm2_shell_integration.zsh ]] && source ~/.iterm2_shell_integration.zsh

# MacTeX
export PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-darwin

# On Mac, Silently replace cb with pbcopy
command -v pbcopy >/dev/null 2>&1 && alias cb="pbcopy"

# added by Anaconda3 4.1.0 installer
# export PATH="/Users/szafar/.apps/anaconda3/bin:$PATH"

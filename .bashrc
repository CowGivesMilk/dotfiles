# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'       # Enable color output for ls
alias la='ls -a'                 # Show all files with ls
alias lsd='ls -a -d */'                 # Show all files with ls
alias grep='grep --color=auto'   # Enable color output for grep
alias cat='bat'                  # Use 'bat' as an enhanced cat replacement

# PS1 - Command prompt with Git branch info
parse_git_branch() {
  git branch 2>/dev/null | grep '^*' | sed 's/^* /⎇ /'
}
PS1='\[\e[32m\]\u \[\e[34m\]\w \[\e[33m\]$(parse_git_branch)\n\[\e[0m\]  \$ '

# Add custom directories to PATH
export PATH="$HOME/Scripts:$HOME/Scripts/Binaries:$XDG_DATA_HOME/npm/bin:$PATH"

# Git autocompletion
[ -f /usr/share/git/completion/git-completion.bash ] && . /usr/share/git/completion/git-completion.bash || echo "Can not enable git auto completion"
## OSX bash profile

## PATH Variable Management
# export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH=$PATH:.

## ALIAS

# homebrew install command with arch -x86_64 prefix
# arch -x86_64 brew install <package>
alias brew="arch -x86_64 brew"

# mysql command if "can't connect to server"
# mysql.server start


## Shell Formatting

# turn off annoying default shell is zsh warning
 export BASH_SILENCE_DEPRECATION_WARNING=1

# terminal coloring
 export CLICOLOR=1
 export LSCOLORS=GxBxCxDxexegedabagaced

 parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }

 export PS1="\e[0;35m->> \e[1;34m\W\e[0;32m\$(parse_git_branch)\e[0;37m $ "


alias ls='ls -lh --color'
alias c='clear'
alias q='exit'
alias r='reset'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias way2me='way2 -u 8820482600 -p asdf1234 -t 8820482600'
alias cdd='cd ~/Desktop'
alias sshs='sudo /etc/init.d/ssh '

alias python2=/usr/bin/python
alias py2=/usr/bin/python
alias python=/usr/bin/python3
alias py3=/usr/bin/python3

alias dbc='xdg-open'



# This file compiles .c or .cpp files. It automatically chooses the required
# compiler, gcc for .c files and g++ for .cpp files. Some flags are added,
# -ggdb for gdb, -Wall and -Werror for warnings

alias gcx=xcomp
function xcomp {
    file_name=$(echo $1|sed -r 's/(.*)\.(c|cpp)/\1/')
    extension=$(echo $1|sed -r 's/(.*)\.(c|cpp)/\2/')
    compiler="gcc"
    if [ "$extension" = "cpp" ]
    then
        compiler="g++"
    fi
    echo "$compiler -ggdb -Wall -Werror $1 -o $file_name"
    $compiler -ggdb -Wall -Werror $1 -o $file_name
}

# Tree - if the original tree command does not exists
if [ ! -x "$(which tree 2>/dev/null)" ]
then
    alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

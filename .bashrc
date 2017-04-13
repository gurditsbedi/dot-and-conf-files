#
# ~/.bashrc
#

# hardcoded {{{

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# }}}
# custom aliases {{{
alias ls='ls -lh --color=auto'
alias c='clear'
alias q='exit'
alias r='reset'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cdd='cd ~/Desktop'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias sshs='sudo /etc/init.d/ssh '

alias py=/usr/bin/python3
alias py3=/usr/bin/python3
alias python=/usr/bin/python3
alias py2=/usr/bin/python2
alias python2=/usr/bin/python2

alias dbc='xdg-open'
alias e='nvim'
alias v='nvim -M'

alias way2me='way2 -u 8820482600 -p asdf1234 -t 8820482600'

# }}}
### For using transfer.sh to share files {{{
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
    tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

# }}}
# small apps neovim, fzf {{{
# for neovim (changing cursor to I-beam when entered in Insert Mode
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# for fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# for solarized-dir-colors
eval `dircolors /home/gurdit/.dir_colors`

# }}}
# tree command alternative {{{
# Tree - if the original tree command does not exists
if [ ! -x "$(which tree 2>/dev/null)" ]
then
    alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi
# }}}
# custom gcc, g++ command {{{
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

# }}}



# vim:foldmethod=marker:foldlevel=0

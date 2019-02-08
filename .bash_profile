##=====	PROMPT FORMAT ========
# default = '\h:\W \u\$ '
# current = '[\@] /\W \u$ '

# export PS1='\[\033[1;32m\][\@] /\W \u\[\033[0m\]$ '
#  Bold green

export PS1="\[\033[1;37m\][\@] /\W \u$ \[\033[0m\]"
#  Bold white


##=====	RE-DEFINED COMMANDS ========
alias ls='ls -l'


##=====	DIR PATHS ========
alias dev='cd ~/Developer/'


##=====	ACTIONS ========
alias rebashp='source ~/.bash_profile'
	# "source" - Load any functions file into the current shell script
	# aka apply new alias' in .bash_profile

alias ebp='bbedit ~/.bash_profile'
alias pref='open "x-apple.systempreferences:"'
alias chrome='open -a "Google Chrome.app"'

alias wwy='tput smam'
alias wwn-='tput rmam'
	# Word Wrap On/Off (wwy/wwn)


##=====	GIT ========
alias git='hub'
alias ega='bbedit ~/.gitconfig'
alias egc='bbedit ~/.gitconfig'
alias g-alias='more ~/.gitconfig'

	# Sample Formats
	# %C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset
	#
	# $ git log -2 --pretty=format:%h 4da45bef \
	#   | perl -pe '$_ .= " -- NO NEWLINE\n" unless /\n/'
	# 4da45be
	# 7134973 -- NO NEWLINE
	#
	# $ git log -2 --pretty=tformat:%h 4da45bef \
	#   | perl -pe '$_ .= " -- NO NEWLINE\n" unless /\n/'
	# 4da45be
	# 7134973

# git log --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
# git log --color --pretty=format:'%Cred%h%Creset %Cgreen(%cr) %C(bold blue)%an%Creset %C(yellow)%d%Creset [%s]' --abbrev-commit
# git log --color --pretty=format:'%Cred%h%Creset -%Cgreen(%cr) %C(yellow)%d%Creset %Cgreen(%cr) %Cblue(%an) %Creset' --abbrev-commit


##=====	MISCELLANEOUS ========
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
	# ???

##=====	NOTES ========
#--------- GENERAL
#-0-
# Change location of screen shots
# 	>$ defaults write com.apple.screencapture location /path/to/put/screenshots
#
#-1-
# Find and remove files named?
# 	>$ find -exec rm {} \;
#
#-2-
# File string replacement??
# 	>$ cd /path/to/your/folder
# 	>$ sed -i 's/foo/bar/g' *
#
# Occurrences of "foo" will be replaced with "bar"alias artifactorypodupdate="pod repo-art list | grep ^[a-zA-Z] | while read repo; do pod repo-art update \$repo; done"
#
#-3-
# Gma's Stuff
# 	Tigger031779
# 	ssh robertlewis@192.168.1.11
# 	open vnc://192.168.1.143/
#
#-4-
# Prompt Config
# - Display bash prompt format
# 		>$ echo $PS1
# 		>\h:\W \u\$  (<< default)
# - Set prompt format
#		>$ PS1='<NEW FORMAT>$ '
#	Ex:
#		>...monica$ PS1='MY NEW BASH PROMPT@\t:\w$ '
#		>MY NEW BASH PROMPT@14:53:07:~$
#
# Formatting help link: https://linuxconfig.org/bash-prompt-basics
#
#	Black       0;30 (1;30) = Dark Gray
#	Red         0;31
#	Green       0;32
#	Brown       0;33
#	Blue        0;34
#	Purple      0;35
#	Cyan        0;36
#	Light Gray  0;37 (1;37) = White
#
#
#
# PS1="\[\033[1;34m\][\$(date +%H%M)][\u@\h:\w]$\[\033[0m\] "
# [1618][monica@Monicas-MacBook-Pro:~]$
#
# PS1="\[\033[1;34m\][\#|\A]\W \u$ \[\033[0m\] "
#
# [\#|\A]\W \u$
#
# #--------- GIT
#-0-
# Pretty/Formatted Log +
#	>$ git log [options]
#
# 	options =
#	--graph (ui)
#	--pretty=format:
#		'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'
#	--abbrev-commit
#	--date=relative <BRANCH_1_NAME>..<BRANCH_2_NAME>
#
#	Example
#		>$ git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative master..branch-X
#
#-1- Show date with git reflog (or other listings?)
# 	>$ git reflog --date=iso
#

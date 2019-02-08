##=========================================

#-- CURRENT CARD BRANCH

alias card='git checkout jdtic-us95661'

##=====	GENERAL ========

#-- TRUE-As
alias cache-dir='getconf DARWIN_USER_CACHE_DIR'
alias x-cache='cd $(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache'

#-- COMMANDS
alias ls='ls -l'

#-- GENERAL PATHS
alias cname='WDXMR69043TD8'
alias oname='WDXEC019048WN'
alias utl='dev; cd Personal/Utilities'

#-- LOCATIONS
alias dev='cd ~/Developer/'

	alias ex='dev; cd Exampl*'
		alias sc='ex; cd SoupChef'

	alias prs='dev; cd Personal'
	alias psn='prs';
		alias mk='prs; cd MoniKit'
			alias utl='mk; cd Utilities'
			alias mkapp='mk; cd MKApp'
			alias mkutl='mk; cd MKUtilities'

#-- ACTIONS
alias ssh-jd='ssh-add -D; ssh-add ~/.ssh/id_rsa'
alias ssh-mmr='ssh-add -D; ssh-add ~/.ssh/id_rsa_personal_mmr118'
	# sets the current public key for git account access

alias rebashp='source ~/.bash_profile'
alias ebp='bbedit ~/.bash_profile'
alias pref='open "x-apple.systempreferences:"'
alias chrome='open -a "Google Chrome.app"'
alias xc-devdir='open ~/Library/Developer/Xcode/'

alias ux='isg; cd Resources/UX'

alias w-on='tput smam'
alias w-off='tput rmam'

alias w-='tput smam'
alias uw-='tput rmam'

# alias clean-xcache='rm -r cache-dir' // rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"

# alias stop-index='defaults write com.apple.dt.XCode IDEIndexDisable 1'
# alias start-index='defaults write com.apple.dt.XCode IDEIndexDisable 0'

#-- GIT
alias ega='bbedit ~/.gitconfig'
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

##=========================================
##========	GTIN ===========================

alias gtin='dev; cd GTIN'

# Paths
alias mp='gtin; cd MowerPlus-iOS'
alias jdg='gtin; cd JDGoAppsKit-iOS'
alias gtp='gtin; cd GrainTruckPlus-iOS'
alias mw='gtin; cd MyWork-iOS'



#----------- OTHER ----------------

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#-----------------------------------
#-----------------------------------
#----------NOTES---------------

### Pretty/Formatted Git Log +
#
# git log
#	--graph
#	--pretty=format:
#		'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'
#	--abbrev-commit
#	--date=relative <BRANCH_1_NAME>..<BRANCH_2_NAME>
#
#
# git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative master..branch-X



### find and remove files named?
# 	>$ find -exec rm {} \;

### Show date with git reflog (or other listings?)
# 	>$ git reflog --date=iso

### Change location of screen shots
# 	>$ defaults write com.apple.screencapture location /path/to/put/screenshots

### Gma's Stuff
# Tigger031779
# ssh robertlewis@192.168.1.11
# open vnc://192.168.1.143/

### File string replacement??
# 	>$ cd /path/to/your/folder
# 	>$ sed -i 's/foo/bar/g' *
#
# Occurrences of "foo" will be replaced with "bar"alias artifactorypodupdate="pod repo-art list | grep ^[a-zA-Z] | while read repo; do pod repo-art update \$repo; done"

#-------------???----------------------

export DANGER_GITHUB_API_TOKEN=8208fd6b5bcb1f4a4c5aeab98ce0e33475d61b26

export PATH="$HOME/.fastlane/bin:$PATH"


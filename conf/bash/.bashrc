# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

export PATH=/home/prestonharberts/src/fedora-37-configuration/bin/:$PATH
export PATH=/home/prestonharberts/bin/:$PATH
export PATH=/home/prestonharberts/go/bin/:$PATH

unset rc

PATH="/home/prestonharberts/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/prestonharberts/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/prestonharberts/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/prestonharberts/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/prestonharberts/perl5"; export PERL_MM_OPT;

# frequently used commands: software
alias c='codium'
alias d='detox -s hyphenated'
alias g='gio open'
alias v='vim'
alias z='zathura --fork'

# frequently used commands: navigation
alias cls='clear && ls'
alias cdu='cd ..'
alias cduu='cd ../..'
alias cduu='cd ../../..'

# frequently used commands: system
alias upgrade='sudo dnf upgrade -y && sudo dnf autoremove && sudo flatpak upgrade'
alias fetch='neofetch --off'

# frequently used commands: files and folders
alias cdbin='cd ~/bin/'
alias cdcom='cd ~/com/'
alias cddoc='cd ~/doc/'
alias cdfun='cd ~/fun/'
alias cdinb='cd ~/inb/'
alias cdlnk='cd ~/lnk/'
alias cdmus='cd ~/mus/'
alias cdnet='cd ~/net/'
alias cdpic='cd ~/pic/'
alias cdsrc='cd ~/src/'
alias cdtmp='cd ~/tmp/'
alias tasks='vi ~/doc/tasks'
alias fedora='cd ~/src/fedora-37-configuration/docs/'
alias bible='cd ~/src/biblegateway-to-markdown/'

# frequently used commands: git
alias gits='git status'
alias gitcm='git commit -m'
alias gita='git add -A'

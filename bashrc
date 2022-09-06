# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1='[\W ($?) ]\$ '
set -o vi
. /home/mszeptuch/.aliases
. /home/mszeptuch/.podr
. /home/mszeptuch/.cwicz
. /home/mszeptuch/.day_to_the_end_of_year.sh
. /home/mszeptuch/.days.sh
alias espeakpp="espeak -v pl -w $2 -f $1"

if [ -d "venv" ]; then
 source venv/bin/activate
fi

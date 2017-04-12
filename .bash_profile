# Alias
alias ls='ls -G'
alias vmd='/Applications/VMD\ 1.9.3.app/Contents/Resources/VMD.app/Contents/MacOS/VMD' 

##
# Your previous /Users/xiaoyubai/.bash_profile file was backed up as /Users/xiaoyubai/.bash_profile.macports-saved_2016-09-30_at_14:16:07
##

# MacPorts Installer addition on 2016-09-30_at_14:16:07: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda2 4.2.0 installer
export PATH="/Users/xiaoyubai/anaconda/bin:$PATH"

# Config for powerline:
PS1="[\u@\h \W]\$"
# source /Users/xiaoyubai/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
export PATH="$HOME/.local/bin:$PATH"
export POWERLINE_COMMAND=powerline
export POWERLINE_CONFIG_COMMAND=powerline-config
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# Config of current workding directories:
mydir=~/Desktop/Current_Progress/Mapping_to_Viscek_Model/Simulation/
cd $mydir

test -r /sw/bin/init.sh && . /sw/bin/init.sh

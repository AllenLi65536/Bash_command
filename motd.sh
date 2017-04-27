#filenameme to use as output
motd="/etc/motd"
# Collect useful information about your system
# $USER is automatically defined
HOSTNAME=`uname -n`
KERNEL=`uname -r`
CPU=`uname -p`
ARCH=`uname -m`
# The different colours as variables
W="\033[01;37m"
B="\033[01;34m"
R="\033[01;31m" 
X="\033[00;37m"
MOTD_MEMORY=`free -m | awk '/Mem/ { printf("%3.1f%%", $3/$2*100) }'`
MOTD_SWAP=`free -m | awk '/Swap/ { printf("%3.1f%%", $3/$2*100) }'`
MOTD_ROOT=`df -h / | awk '/\// {print $(NF-1)}'`
MOTD_HOME=`df -h /home | awk '/\/home/ {print $(NF-1)}'`
#MOTD_MEDIA=`df -h /media/sdb1 | awk '/\/media\/sdb1/ {print $(NF-1)}'`
clear > $motd # to clear the screen when showing up
echo -e "$R#=============================================================================#" >> $motd
echo -e "	$W Welcome $B $USER $W to $B $HOSTNAME                " >> $motd
echo -e "	$R ARCH   $W= $ARCH                                   " >> $motd
echo -e "	$R KERNEL $W= $KERNEL                                 " >> $motd
echo -e "	$R MEMORY USAGE $W= $MOTD_MEMORY                            " >> $motd
echo -e "	$R SWAP USAGE $W= $MOTD_SWAP                            " >> $motd
echo -e "	$R ROOT USAGE $W= $MOTD_ROOT                            " >> $motd
#echo -e "	$R HOME $W= $MOTD_HOME                            " >> $motd
#echo -e "	$R CPU    $W= $CPU                                    " >> $motd
echo -e "$R#=============================================================================#" >> $motd
echo -e "\e[00;35m$(fortune | cowsay -f small)\e[00m" 
echo -e "$X" >> $motd

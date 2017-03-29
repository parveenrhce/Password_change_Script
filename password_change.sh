#!/bin/bash
##########################################################################
#########################  Created by PARVEEN  ###########################
####  This script changes password of all AIX,Solaris,Linux servers  #####
####                                                                 #####
##########################################################################
#
#
for i in `cat /path/to/file/contains/IP/addresses | awk '{print $1}'`;
#
do
#
echo "==========================="
echo -ne '\n\n\n'
echo "Changing password for $i"
echo -ne '\n\n\n'
echo "==========================="
/usr/bin/expect << EOF
spawn ssh -o StrictHostKeyChecking=no user1@$i
expect "*assword: "
send "old_password\r"
expect "$ "
send "sudo -iu root\r"
expect "*assword: "
send "old_password\r"
expect "# "
send "passwd user1\r"
expect "*assword: "
send "new_password\r"
expect "*assword: "
send "new_password\r"
expect "uccessfully"
expect "# "
send "pwdadm -c user1\r"
expect "# "
EOF
done

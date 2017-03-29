# Password_change_Script
There has always been a problem in complex multi-flavoured UNIX environment for changing a password of user in one shot on all servers. It can be possible using automation tools like PUPPET and Ansible, but if these tools are not provisioned in your infra then it becomes very difficult to change password of user on all servers. Specially when password expiration policy is enforced on all servers.
Suppose you have 500 servers in your DC and they are of different UNIX flavors like: Solaris, AIX and Linux. This script is intended to run on this environment. 
Note: sshpass will not be used for this.

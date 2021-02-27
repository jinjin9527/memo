1.CentOS
1.1. close firewall
systemctl stop firewalld
systemctl disable firewalld
1.2. close selinux 
setenforce 0
sed -i 's/enforcing/disabled/' /etc/selinux/config
1.3. install 
yum install java-1.8.0-openjdk

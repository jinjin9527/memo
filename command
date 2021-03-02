1.CentOS
1.1. close firewall
systemctl stop firewalld
systemctl disable firewalld
1.2. close selinux 
setenforce 0
sed -i 's/enforcing/disabled/' /etc/selinux/config
1.3. install 
yum install java-1.8.0-openjdk
or
tar -xzvf jdk-11.0.10_linux-x64_bin.tar.gz
mv /opt/jdk-11.0.10_linux-x64_bin /usr/local/java
vm /etc/profile
export JAVA_HOME=/usr/local/java
export PATH=$PATH:$JAVA_HOME/bin
source /etc/profile
:wq
java -version

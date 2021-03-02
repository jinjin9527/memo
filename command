1.CentOS
1.1. close firewall
systemctl stop firewalld
systemctl disable firewalld
1.2. close selinux 
setenforce 0
sed -i 's/enforcing/disabled/' /etc/selinux/config
1.3. install java
yum install java-1.8.0-openjdk
or
download java binary file
tar -xzvf jdk-11.0.10_linux-x64_bin.tar.gz
mv /opt/jdk-11.0.10_linux-x64_bin /usr/local/java
vm /etc/profile
export JAVA_HOME=/usr/local/java
export PATH=$PATH:$JAVA_HOME/bin
source /etc/profile
:wq
java -version
1.4. install scala
download rpm file
yum install -y scala-2.12.13.rpm
scala -version
1.5. install spark

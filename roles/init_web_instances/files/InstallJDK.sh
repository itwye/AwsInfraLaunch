#!/bin/bash

user_home_dir=`cd ~;pwd`

install_dir="${user_home_dir}/software"

sudo yum install -y wget

wget -P ${install_dir}/ \
--no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.tar.gz

cd ${install_dir} && tar zxf jdk-8u172-linux-x64.tar.gz 

ln -s  ${install_dir}/jdk1.8.0_172  ${install_dir}/java

cat << EOF >> ~/.bash_profile

export JAVA_HOME=${install_dir}/java
export JRE_HOME=${install_dir}/java/jre
export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar:\$JRE_HOME/lib:\$CLASSPATH
export PATH=\$JAVA_HOME/bin:\$PATH

EOF

source ~/.bash_profile
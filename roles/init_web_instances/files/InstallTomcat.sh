#!/bin/bash


user_home_dir=`cd ~;pwd`

install_dir="${user_home_dir}/software"

set -m

curl -s -o ${install_dir}/apache-tomcat-7.0.86.tar.gz  \
http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-7/v7.0.86/bin/apache-tomcat-7.0.86.tar.gz

cd ${install_dir}  &&  tar zxf apache-tomcat-7.0.86.tar.gz 

ln -s ${install_dir}/apache-tomcat-7.0.86  ${install_dir}/tomcat

cat << EOF >> ~/.bash_profile
export CATALINA_BASE=${install_dir}/tomcat
export CATALINA_HOME=${install_dir}/tomcat
EOF

source ~/.bash_profile

${install_dir}/tomcat/bin/startup.sh
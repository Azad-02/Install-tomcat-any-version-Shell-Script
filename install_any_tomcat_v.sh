#./usr/bin/bash

#tom_version="10.1.0-M17"
tom_version=$1			# to take input from terminal
tom_m_ver=$(echo $tom_version | cut -d "." -f 1)
url="https://dlcdn.apache.org/tomcat/tomcat-${tom_m_ver}/v${tom_version}/bin/apache-tomcat-${tom_version}.tar.gz"

wget ${url}
tar -xvzf apache-tomcat-${tom_version}.tar.gz
mv apache-tomcat-${tom_version} apache-tomcat${tom_m_ver}
rm -rf apache-tomcat-${tom_version}.tar.gz

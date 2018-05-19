
#!/bin/sh
cd /var/lib/jenkins/workspace/appdepl/target
mv spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war helloworld.war
scp -v -o StrictHostKeyChecking=no helloworld.war root@192.168.56.2:/usr/share/tomcat/webapps
ssh root@192.168.56.2 "service tomcat stop"
ssh root@192.168.56.2 "service tomcat start"

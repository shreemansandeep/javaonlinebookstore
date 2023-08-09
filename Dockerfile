// FROM tomcat:latest

// ADD ./target/*.war /usr/local/tomcat/webapps/

// EXPOSE 8080

// CMD ["catalina.sh", "run"] 

FROM openjdk:8
EXPOSE 8082
ADD target/petclinic.war petclinic.war
ENTRYPOINT ["java","-jar","/petclinic.war"]

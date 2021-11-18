FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/Timesheet-0.0.1-SNAPSHOT.war Timesheet-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/Timesheet-0.0.1-SNAPSHOT.war"]
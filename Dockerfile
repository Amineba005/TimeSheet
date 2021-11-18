FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.war Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.war
ENTRYPOINT ["java","-jar","Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.war"]
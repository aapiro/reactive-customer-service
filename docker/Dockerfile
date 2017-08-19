FROM openjdk:8-jdk
EXPOSE 8081 8443
RUN mkdir -p /opt
COPY reactive-customer-service-0.0.1-SNAPSHOT.jar /opt
RUN sh -c 'touch reactive-customer-service-0.0.1-SNAPSHOT.jar'  
ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://mongodb/customers","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/reactive-customer-service-0.0.1-SNAPSHOT.jar"]  

FROM ubuntu
RUN apt update && apt install openjdk-17-jdk -y && apt install maven -y && apt install git -y
RUN git clone https://github.com/satishgavva/spring-petclinic.git && cd spring-petclinic && mvn package 
EXPOSE 8080
CMD [ "java" ,"-jar" ,"target/*.jar"] 
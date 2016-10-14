# Pull base image
# ---------------
FROM openjdk:latest

# Author
# ----------
MAINTAINER Mark Heckler <mark.heckler@gmail.com, @MkHeck>

# Build the container
# -------------------
RUN mkdir /jars
COPY jars/quote-service-0.0.1-SNAPSHOT.jar /jars
# RUN ls /jars
ENTRYPOINT ["java", "-jar", "/jars/quote-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080

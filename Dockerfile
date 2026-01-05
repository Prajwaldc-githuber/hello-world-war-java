FROM tomcat:9.0-jdk17-temurin

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8000

CMD ["catalina.sh", "run"]

# Specify the eXist-db release as a base image
FROM existdb/existdb:5.2.0

# Grab the srophe-exist-app .xar and put it in autodeploy
RUN wget -P /exist/autodeploy https://github.com/usaybia/srophe-eXist-app/releases/download/v0.5.9-alpha/usaybia-0.5.9-alpha.xar

# Copy Srophe required libraries/modules to autodeploy, include the srophe.xar and the srophe-data.xar
COPY autodeploy/*.xar /exist/autodeploy/

# OPTIONAL: Copy custom conf.xml to WEB-INF.
COPY conf/conf.xml /exist/etc

#EXPOSE 8080 8443
EXPOSE 8080 8443

# Start eXist-db
CMD [ "java", "-jar", "start.jar", "jetty" ]

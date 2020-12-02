# Specify the eXist-db release as a base image
FROM existdb/existdb:5.2.0

ADD http://exist-db.org/exist/apps/public-repo/public/exist-sparql-0.1-SNAPSHOT.xar /exist/autodeploy/

# Copy Srophe required libraries/modules to autodeploy, include the srophe.xar and the srophe-data.xar
COPY autodeploy/*.xar /exist/autodeploy/

# OPTIONAL: Copy custom conf.xml to WEB-INF.
COPY conf/conf.xml /exist/etc

#EXPOSE 8080 8443
EXPOSE 8080 8443

# Start eXist-db
CMD [ "java", "-jar", "start.jar", "jetty" ]

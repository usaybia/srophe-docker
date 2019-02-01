# srophe-docker
Docker image builder for the Srophe software. Based on the eXist-db Docker image. 

This image loads the following eXist-db libraries and modules: 
1. EXPATH Cryptographic Library Module v0.6 [http://exist-db.org/exist/apps/public-repo/packages/expath-crypto-exist-lib.html?eXist-db-min-version=4.4.0]
2. FunctX library [http://exist-db.org/exist/apps/public-repo/packages/functx.html]
3. SPARQL and RDF indexing for eXist-db [http://exist-db.org/exist/apps/public-repo/packages/exist-sparql.html?eXist-db-min-version=3.0.3]

### Additional Customizations
1. The image also includes a custom controller-config.xml and exist-webapp-context.xml to set the Srophe app (/db/apps/srophe) as the root direcory, allowing users to access it at  
http://localhost:8080/index.html. 
2. A custom eXist-db conf.xml adds the RDF index collection.xconf used by the SPARQL module. 


## Sponsors:
The Center of Digital Humanities Research at Texas A&M University [http://codhr.dh.tamu.edu/]

Digital Cultural Heritage Cluster at Vanderbilt University [https://my.vanderbilt.edu/digitalculturalheritage/]

Syriaca.org: The Syriac Reference Portal [http://syriaca.org/]

## Srophe Apllication settings

## How To Use
Pre-built images are available on DockerHub [].

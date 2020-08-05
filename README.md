# srophe-docker
Docker image builder for the Srophe software. Based on the eXist-db Docker image [https://hub.docker.com/r/existdb/existdb]. 

### This image pre-loads the following eXist-db libraries and modules: 
1. EXPATH Cryptographic Library Module v0.6 [http://exist-db.org/exist/apps/public-repo/packages/expath-crypto-exist-lib.html?eXist-db-min-version=4.4.0]
2. FunctX library [http://exist-db.org/exist/apps/public-repo/packages/functx.html]
3. SPARQL and RDF indexing for eXist-db [http://exist-db.org/exist/apps/public-repo/packages/exist-sparql.html?eXist-db-min-version=3.0.3]
4. GitHub API XQuery Library for interacting with GitHub webhooks: https://github.com/eXist-db/github-xq

### Additional Optional Customizations
These can be added by uncommenting the following lines in the Dockerfile. Lines 8, 12 and 15.
1. The image also includes a custom controller-config.xml and exist-webapp-context.xml to set the Srophe app (/db/apps/srophe) as the root direcory, allowing users to access the application home page at http://localhost:8080/index.html. 
2. A custom eXist-db conf.xml adds the RDF index collection.xconf used by the SPARQL module. 

## How To Use
Pre-built images are available on DockerHub [https://hub.docker.com/repository/docker/srophe/srophe].

Add your most upto date application and data .xar to https://github.com/srophe/srophe-docker/tree/master/autodeploy

Build the docker file
```docker build -t srophe:v1.0 .```


## Sponsors:
The Center of Digital Humanities Research at Texas A&M University [http://codhr.dh.tamu.edu/]

Digital Cultural Heritage Cluster at Vanderbilt University [https://my.vanderbilt.edu/digitalculturalheritage/]

Syriaca.org: The Syriac Reference Portal [http://syriaca.org/]




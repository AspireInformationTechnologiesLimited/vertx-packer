# vertx-packer

* Install packer from https://www.packer.io/downloads.html
* Create an AWS account at https://portal.aws.amazon.com/billing/signup#/start
* Secure AWS access key and secret

# Create an AMI

* pull https://github.com/AspireInformationTechnologiesLimited/vertx-packer
* cd to vertx-packer project ex: /microservices/vertx-packer
* Update variables on vertx_image.json
* Execute below commands
  * packer validate vertx_image.json - to validate the syntax and configuration of a template
  * packer build vertx_image.json -  to generate a set of artifacts
* At the end of the build you should see an AMI getting generated and registered on AWS console and Vagrant box on your directory
  
More info on packer - https://www.packer.io/intro/why.html 
  

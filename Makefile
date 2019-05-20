VERSION=3.1.2
REGION=us-east-1

help: 			##   Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -E 's/:.*##/:    /g'	

build:			##  Build image 
	@docker build -t gatling-s3:$(VERSION)-jdk-alpine .

deploy: 		## Deploy image to ECR
	@aws ecr get-login --no-include-email --region $(REGION) $(PROFILE) | sh
	@docker tag gatling-s3:$(VERSION)-jdk-alpine 087833863386.dkr.ecr.us-east-1.amazonaws.com/gatling-s3:$(VERSION)
	@docker push 087833863386.dkr.ecr.us-east-1.amazonaws.com/gatling-s3:$(VERSION)
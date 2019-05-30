#!/bin/sh

aws s3 cp --recursive s3://$BUCKET_NAME/resources/ /opt/gatling/user-files/resources/
aws s3 cp --recursive s3://$BUCKET_NAME/simulations/ /opt/gatling/user-files/simulations/
sh /opt/gatling/bin/gatling.sh -s $SIMULATION
aws s3 sync /opt/gatling/results/ s3://$BUCKET_NAME/results/

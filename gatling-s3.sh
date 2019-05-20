#!/bin/sh

sh /opt/gatling/bin/gatling.sh -s $SIMULATION
tree -H '.' -L 3 --noreport --charset utf-8 -P "index.html" > /opt/gatling/index.html
aws s3 cp /opt/gatling/index.html s3://$BUCKET_NAME/
aws s3 sync /opt/gatling/results/ s3://$BUCKET_NAME/results/
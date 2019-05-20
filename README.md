## Usage

Use image to run container

```
docker run -it --rm \
    -v /Users/igor.lema/Downloads/gatling-charts-highcharts-bundle-3.1.2/conf:/opt/gatling/conf \
    -v /Users/igor.lema/Downloads/gatling-charts-highcharts-bundle-3.1.2/user-files:/opt/gatling/user-files \
    -e BUCKET_NAME=faster-loadtest/remote-config \
    -e SIMULATION=remoteconfig.LoadTest \
    gatling-s3:3.1.2-jdk-alpine
```
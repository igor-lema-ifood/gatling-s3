## Usage

Use image to run container

```
docker run -it --rm \
    -e SIMULATION=remoteconfig.LoadTest \
    -e BUCKET_NAME=faster-loadtest \
    gatling-s3:3.1.2-jdk-alpine
```
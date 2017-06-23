# newrelic-aerospike

Dockerfile for [aerospike-newrelic](https://github.com/aerospike/aerospike-newrelic)

## How to use this image

You can used our [docker image](https://hub.docker.com/r/intimatemerger/newrelic-aerospike/) in Dockerhub.

```shell
docker pull intimatemerger/newrelic-aerospike:latest
docker run -it intimatemerger/newrelic-aerospike:latest \  d
    -e LICENSE_KEY=0000000000000000000000000000000000000000 \
    -e AS_HOST=10.0.0.1:3000
```

### Parameters

| name | default | description |
| --- | --- | --- |
| LICENSE_KEY |  | NewRelic API Key |
| AS_HOST |  | Aerospike Host |

#!/bin/bash

dt=`date '+%d%m%Y-%H%M%S'`

docker build -t customer-identification:$dt .
docker tag customer-identification:$dt datastreambrasil/of-flink-jobs:customer-identification-$dt
docker push datastreambrasil/of-flink-jobs:customer-identification-$dt
#!/bin/bash
COMMIT=$(git rev-parse --verify HEAD)
docker  build -t myapp:${COMMIT}  . 
docker tag myapp:${COMMIT} jitendrarathore/androidapp:latest
#docker image tag MyApp:${COMMIT} myrepo/MyApp:latest
docker login -u jitendrarathore -p bmw303run
docker push jitendrarathore/androidapp:latest 
#docker push myrepo/MyApp:latest
#sed -ie "s/THIS_STRING_IS_REPLACED_DURING_BUILD/$(date)/g" deployment.yml
#kubectl apply -f deployment.yml 

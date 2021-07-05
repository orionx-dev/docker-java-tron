VERSION=(${1//-v/ })

REGISTRY=658464581062.dkr.ecr.us-east-1.amazonaws.com/orionx/java-tron

docker build . --build-arg JAVA_TRON_VERSION=${1} -t ${REGISTRY}:${VERSION[1]}

docker push ${REGISTRY}:${VERSION[1]}

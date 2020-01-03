set -ex

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push fastide/${OS_FAMILY}:${OS_VERSION}


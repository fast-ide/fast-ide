set -ex

pushd linuxbrew/docker/${OS_FAMILY}-${OS_VERSION}
tar -czh . | docker build -t linuxbrew/${OS_FAMILY}:${OS_VERSION} -
popd
cd docker/${OS_FAMILY}-${OS_VERSION}
tar -czh . | docker build -t fastide/${OS_FAMILY}:${OS_VERSION} -

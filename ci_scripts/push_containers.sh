export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

VERSION=$IMAGE_TAG make build
VERSION=$IMAGE_TAG make test
VERSION=$IMAGE_TAG make push

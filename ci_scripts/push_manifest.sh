export IMAGE_TAG=$(cat VERSION)
export DOCKER_CLI_EXPERIMENTAL=enabled


$IMAGE_NAME=k8s-dns-dnsmasq
docker manifest create --amend cachengo/$IMAGE_NAME:$IMAGE_TAG cachengo/$IMAGE_NAME-amd64:$IMAGE_TAG cachengo/$IMAGE_NAME-arm64:$IMAGE_TAG
docker manifest push cachengo/$IMAGE_NAME:$IMAGE_TAG

$IMAGE_NAME=k8s-dns-sidecar
docker manifest create --amend cachengo/$IMAGE_NAME:$IMAGE_TAG cachengo/$IMAGE_NAME-amd64:$IMAGE_TAG cachengo/$IMAGE_NAME-arm64:$IMAGE_TAG
docker manifest push cachengo/$IMAGE_NAME:$IMAGE_TAG

$IMAGE_NAME=k8s-dns-kube-dns
docker manifest create --amend cachengo/$IMAGE_NAME:$IMAGE_TAG cachengo/$IMAGE_NAME-amd64:$IMAGE_TAG cachengo/$IMAGE_NAME-arm64:$IMAGE_TAG
docker manifest push cachengo/$IMAGE_NAME:$IMAGE_TAG

$IMAGE_NAME=k8s-dns-dnsmasq-nanny
docker manifest create --amend cachengo/$IMAGE_NAME:$IMAGE_TAG cachengo/$IMAGE_NAME-amd64:$IMAGE_TAG cachengo/$IMAGE_NAME-arm64:$IMAGE_TAG
docker manifest push cachengo/$IMAGE_NAME:$IMAGE_TAG

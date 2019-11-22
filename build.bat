SET VERSION=v1.0.1
docker rmi quakertlist/alpine-ca:%VERSION%
docker build -t quakertlist/alpine-ca:%VERSION% .
@pause
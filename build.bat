SET VERSION=v1.0.1
REM delete local image
docker rmi quakertlist/alpine-ca:%VERSION%
REM build new image
docker build -t quakertlist/alpine-ca:%VERSION% .
REM push image to remote registry
docker push quakertlist/alpine-ca:%VERSION%
@pause
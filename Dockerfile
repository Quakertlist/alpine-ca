FROM alpine:latest
MAINTAINER sanghg <houguisang@vip.qq.com>

# fix library dependencies
# otherwise golang binary may encounter 'not found' error
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 && \
    apk add --update ca-certificates && \
    rm -rf /var/cache/apk/* /tmp/* && \ 
    update-ca-certificates
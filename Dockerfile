ARG FROM_IMAGE
ARG FROM_VERSION
FROM ${FROM_IMAGE}:${FROM_VERSION}

RUN adduser -u 1000 -h /home/user -D user

USER user
WORKDIR /home/user


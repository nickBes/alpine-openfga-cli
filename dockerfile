FROM alpine:latest

RUN apk add --no-cache bash curl git

RUN curl -L https://github.com/openfga/cli/releases/download/v0.7.0/fga_0.7.0_linux_amd64.tar.gz -o /tmp/fga.tar.gz && \
    tar -xzvf /tmp/fga.tar.gz && \
    mv fga /usr/local/bin/ && \
    rm /tmp/fga.tar.gz

CMD [ "bash" ]
FROM alpine:3.18

# Get VERSION from: https://github.com/GoogleContainerTools/container-structure-test/releases
ARG VERSION=latest

RUN apk add --no-cache curl

# Get command from: https://github.com/GoogleContainerTools/container-structure-test#linux
RUN curl -LO https://storage.googleapis.com/container-structure-test/${VERSION}/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

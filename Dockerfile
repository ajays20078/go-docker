FROM ubuntu:14.04
ENV GOVERSION 1.5.3
ENV ARCH linux-amd64
ENV WORKSPACE /workspace
ENV DEST /usr/local
RUN apt-get update && apt-get install -y --force-yes git-core wget vim curl
RUN wget https://storage.googleapis.com/golang/go$GOVERSION.$ARCH.tar.gz && tar -C $DEST -xzf go$GOVERSION.$ARCH.tar.gz
ENV GOROOT $DEST/go
ENV PATH $GOROOT/bin/:$PATH
RUN mkdir -p $WORKSPACE/go
ENV GOPATH $WORKSPACE/go

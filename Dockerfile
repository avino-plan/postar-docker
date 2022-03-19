# Copyright 2021 FishGoddess.  All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file.

# Use alpine as a based image
# Notice that its shell is sh not bash
FROM alpine:3.14.0
LABEL maintainer="fishgoddess"

# Prepare env
ENV POSTAR_VERSION v0.3.0-alpha
ENV POSTAR_PACKAGE postar-$POSTAR_VERSION-linux-amd64.tar.gz
ENV POSTAR_DOWNLOAD_URL https://github.com/avino-plan/postar/releases/download/$POSTAR_VERSION/$POSTAR_PACKAGE

# Download postar
WORKDIR /
RUN set -e; \
    mkdir postar; \
    wget $POSTAR_DOWNLOAD_URL -P postar

# Deploy postar
WORKDIR /postar
RUN set -e; \
    tar -xzf $POSTAR_PACKAGE; \
    rm $POSTAR_PACKAGE; \
    chmod +x ./postar

# Expose ports
EXPOSE 5897

# Run postar
CMD ["./postar"]
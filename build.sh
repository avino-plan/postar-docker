# Copyright 2021 FishGoddess.  All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file.

# Postar docker build script
VERSION=v0.3.1-alpha

# Build a docker image
docker build -t fishgoddess/postar:$VERSION . || exit

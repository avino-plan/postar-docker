# Copyright 2021 Ye Zi Jie.  All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file.
#
# Postar docker build script
# Author: FishGoddess
VERSION=v0.3.0-alpha

# Build a docker image
docker build -t fishgoddess/postar:$VERSION . || exit
